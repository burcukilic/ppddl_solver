from parse import determinize_domain
import argparse
import os
import subprocess
from tqdm import tqdm

if __name__ == "__main__":

    parser = argparse.ArgumentParser(description="Determinize PPDDL domain by sampling probabilistic effects.")
    parser.add_argument("-f", "--folder_path", type=str, required=True, help="Path to the folder that includes domain.pddl")
    parser.add_argument("-s", "--seed", type=int, default=42, help="Random seed for reproducibility")
    args = parser.parse_args()

    domain_file_path = os.path.join(args.folder_path, "domain.pddl")
    if not os.path.isfile(domain_file_path):
        print(f"Error: The file '{domain_file_path}' does not exist.")
        exit(1)

    with open(domain_file_path, 'r') as file:
        content = file.read()


    plan_results = ""
    success = 0
    fail = 0

    for i in tqdm(range(100), desc="Processing domains"):
        tqdm.write(f"success: {success}, fail: {fail}")

        for t in range(10):
            content = content.replace(" :probabilistic-effects", "")
            # Replace probabilistic effects with sampled ones
            determinized_content = determinize_domain(content, seed=args.seed + i * 100 + t)

            # Save to temp folder
            temp_folder = os.path.join(args.folder_path, "temp")
            os.makedirs(temp_folder, exist_ok=True)
            output_path = os.path.join(temp_folder, f"domain_temp.pddl")

            with open(output_path, 'w') as outfile:
                outfile.write(determinized_content)

            #print(f"Determinized domain written to: {output_path}")

            try:
                subprocess.run(["./downward/fast-downward.py",
                                f"{args.folder_path}/temp/domain_temp.pddl",
                                f"{args.folder_path}/problem.pddl",
                                "--search", "astar(blind())"],
                            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, timeout=100)
                
                # check for a sas_plan in the cwd
                if os.path.isfile(f"sas_plan"):
                    #tqdm.write(f"Plan found for {i}")
                    success += 1
                    with open(f"sas_plan", "r") as plan_file:
                        plan_content = plan_file.read()
                        plan_results += f"Plan for domain_{i}:\n{plan_content}\n"
                    os.remove(f"sas_plan")

                    break
                    
                else:
                    t -= 1

                if t <= 0:
                    #tqdm.write(f"No plan found for {i}")
                    plan_results += f"No plan found for {i}\n"
                    fail += 1
                    break
                else:
                    continue


            except subprocess.TimeoutExpired:
                tqdm.write(f"Timeout expired for {i}")
                plan_results += f"Timeout expired for {i}\n"
                continue

    # remove temp folder
    for file in os.listdir(temp_folder):
        file_path = os.path.join(temp_folder, file)
        
        if os.path.isfile(file_path):
            if(file_path.endswith(".pddl")):
                os.remove(file_path)

    # merge all plan_results to plans.txt
    with open(os.path.join(args.folder_path, "plans.txt"), "w") as f:
        f.write(plan_results)

    # remove everything in temp folder and the folder itself
    for file in os.listdir(temp_folder):
        file_path = os.path.join(temp_folder, file)
        if os.path.isfile(file_path):
            os.remove(file_path)
    os.rmdir(temp_folder)
from parse import determinize_domain
import argparse
import os
import subprocess

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

    for i in range(100):
        for t in range(10):
            content = content.replace(" :probabilistic-effects", "")
            # Replace probabilistic effects with sampled ones
            determinized_content = determinize_domain(content, seed=args.seed + i*13)

            # Save to temp folder
            temp_folder = os.path.join(args.folder_path, "temp")
            os.makedirs(temp_folder, exist_ok=True)
            output_path = os.path.join(temp_folder, f"domain_{i}.pddl")

            with open(output_path, 'w') as outfile:
                outfile.write(determinized_content)

            print(f"Determinized domain written to: {output_path}")

            try:
                subprocess.run(["./downward/fast-downward.py",
                                f"{args.folder_path}/temp/domain_{i}.pddl",
                                f"{args.folder_path}/problem.pddl",
                                "--search", "astar(blind())"],
                            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, timeout=10)
                
                # check for a sas_plan in the cwd
                if os.path.isfile(f"sas_plan"):
                    print(f"Plan found for domain_{i}.pddl")
                    # rename the sas_plan to domain_{i}_plan.txt
                    os.rename("sas_plan", os.path.join(temp_folder, f"domain_{i}_plan.txt"))
                    break

                else:
                    t -= 1
                if t <= 0:
                    print(f"No plan found for domain_{i}.pddl")
                    with open(os.path.join(temp_folder, f"domain_{i}_plan.txt"), "w") as f:
                        f.write("No plan found")
                else:
                    continue


            except subprocess.TimeoutExpired:
                print("Timeout", file=open(os.path.join(temp_folder, f"domain_{i}_plan.txt"), "w"))

    # remove temp folder
    for file in os.listdir(temp_folder):
        file_path = os.path.join(temp_folder, file)
        
        if os.path.isfile(file_path):
            if(file_path.endswith(".pddl")):
                os.remove(file_path)

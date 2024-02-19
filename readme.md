# SJM to Shell Script Conversion Tool

## Development Purpose
- The development purpose of this script conversion tool is to run workflows originally designed for SJM task submission in a local environment. Some workflows need to be executed in the order of SJM jobs without setting up a task submission environment. Hence, this tool is developed to address such scenarios.

## Features
- Developed using pure Python, the tool automatically parses SJM files and converts them into equivalent Shell scripts.
- Primarily utilizes topological sorting algorithms to determine the execution order of jobs in the SJM file.
- Two execution modes:
    - Single-channel execution: Executes jobs in the order specified by the SJM job order step-by-step.
    - Parallel execution of non-dependent jobs: For jobs without dependencies, they can be executed in parallel, improving the efficiency of the entire workflow.

## How to Use
- The demo represents a common workflow in bioinformatics. To facilitate reading the workflow sequence, each cmd path is annotated with serial numbers. The resulting shell script content can be verified based on these numbers.

```
  python sjm_to_shell.py -i demo.sjm -o demo_11.sh -f fun_11 -s bash

    # -i sjm file name
    # -o output shell file name
    # -f choose between single-channel sequential execution (fun_1) or parallel sequential execution (fun_11)
    # -s choose between outputting a shell script (sh) or a bash script (bash)

```

## Known Issues and Challenges
- Current issues:
    - In parallel execution, if a job contains a program that inherently executes in parallel (e.g., bwa -mem), it may lead to insufficient memory situations. Additional checks and handling are needed for such cases.
- Performance optimization:
    - Further optimization of algorithms and code for large workflows to improve conversion and execution efficiency.
- Through continuous feedback and improvement, the goal is to make this script conversion tool more stable, flexible, and user-friendly.
# RepeatModeler and RepeatMasker Installation Scripts

This directory contains scripts to automate the installation of the [RepeatModeler](http://www.repeatmasker.org/RepeatModeler/) and [RepeatMasker](http://www.repeatmasker.org/) bioinformatics tools, which are used for identifying and classifying repetitive DNA sequences in genomic data.

## Available Installation Scripts

- [RepeatMasker Installation](./repeat_masker.sh): This script automates the installation of RepeatMasker.
- [RepeatModeller Installation](./repeat_modeller.sh): This script automates the installation of RepeatModeller.


## Using the Installation Scripts

To use these installation scripts, please follow these steps:

1. Navigate to this directory in your command line interface.
2. Choose the installation script you want to run.
3. Make sure the script has execute permissions. If it doesn't, you can add them with the command `chmod +x <script_name>`.
4. Run the [RepeatMasker Installation](./repeat_masker.sh) before [RepeatModeller Installation](./repeat_modeller.sh)
5. Run the script with `./<script_name>` as a super user ie with `sudo`.
## Post installation
1. In the Recon  directory follow the configurateion instructions in the INSTALL file
2. Run `sudo perl ./configure` at the root path of Repeat masker and Repeat modeller this should also be rerun again for 
   repeat masker if database is updated.
Please refer to the comments in each script for more detailed information about what the script does.

## About RepeatModeler and RepeatMasker

[RepeatModeler](http://www.repeatmasker.org/RepeatModeler/) is a de novo transposable element (TE) family identification and modeling package.

[RepeatMasker](http://www.repeatmasker.org/) is a program that screens DNA sequences for interspersed repeats and low complexity DNA sequences.

These tools are widely used in genomics research, and automating their installation can help to streamline your workflow.

For information about the other installation scripts in this repository, please refer to the [ Installation scripts](../../README.md).
For information about the other scripts in this repository, please refer to the [main README.md](../../README.md).

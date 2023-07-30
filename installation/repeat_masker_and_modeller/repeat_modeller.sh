#!/bin/bash

# Update the system and install Perl
apt-get update -y
apt-get install -y perl rsync unzip build-essential 

# Install RECON
cd /usr/local/
wget http://www.repeatmasker.org/RepeatModeler/RECON-1.08.tar.gz
tar zxvf RECON-1.08.tar.gz
cd RECON-1.08/
make

# Install RepeatScout
cd /usr/local/
wget http://www.repeatmasker.org/RepeatScout-1.0.5.tar.gz
tar zxvf RepeatScout-1.0.5.tar.gz
cd RepeatScout-1
make

# Install UCSC genome browser command-line utilities
mkdir /usr/local/genome_browser_command_line_utilities
sudo sudo rsync -aP rsync://hgdownload.soe.ucsc.edu/genome/admin/exe/linux.x86_64/ /usr/local/genome_browser_command_line_utilities
chmod -R +x /usr/local/genome_browser_command_line_utilities


# Install LtrHarvest
cd /usr/local/
wget http://genometools.org/pub/binary_distributions/gt-1.5.10-Linux_x86_64-64bit-complete.tar.gz
tar -zxvf gt-1.5.10-Linux_x86_64-64bit-complete.tar.gz
chmod +x gt-1.5.10-Linux_x86_64-64bit-complete/bin/gt

# Install Ltr_retriever
# Visit https://github.com/oushujun/LTR_retriever/releases and follow instructions

# Install MAFFT
apt-get install -y mafft

# Install CD-HIT
apt-get install -y cd-hit

# Install Ninja
cd /usr/local/
wget https://github.com/TravisWheelerLab/NINJA/archive/refs/tags/0.98-cluster_only.zip
unzip 0.98-cluster_only.zip
cd NINJA-0.98-cluster_only/NINJA
make

# Install repeat modeller 
cd
wget https://github.com/Dfam-consortium/RepeatModeler/archive/refs/tags/2.0.4.zip
unzip 2.0.4.zip /usr/local/

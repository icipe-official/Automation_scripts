#!/bin/bash

# Update the system and install Perl
apt-get update -y
apt-get install -y perl rsync unzip build-essential 

# Install RECON
cd /usr/local/src/
wget http://www.repeatmasker.org/RepeatModeler/RECON-1.08.tar.gz
tar zxvf RECON-1.08.tar.gz
cd RECON-1.08/
make

# Install RepeatScout
cd /usr/local/src/
wget http://www.repeatmasker.org/RepeatScout-1.0.5.tar.gz
tar zxvf RepeatScout-1.0.5.tar.gz
cd RepeatScout-1.0.5/
make

# Install UCSC genome browser command-line utilities
sudo sudo rsync -aP rsync://hgdownload.soe.ucsc.edu/genome/admin/exe/linux.x86_64/ /usr/local/
chmod -R +x /usr/local


# Install LtrHarvest
cd /usr/local/src/
wget http://genometools.org/pub/genometools-1.6.2.tar.gz
tar zxvf genometools-1.6.2.tar.gz
cd genometools-1.6.2/
make threads=yes
make install

# Install Ltr_retriever
# Visit https://github.com/oushujun/LTR_retriever/releases and follow instructions

# Install MAFFT
apt-get install -y mafft

# Install CD-HIT
apt-get install -y cd-hit

# Install Ninja
# Visit https://github.com/TravisWheelerLab/NINJA/releases/tag/0.95-cluster_only and follow instructions

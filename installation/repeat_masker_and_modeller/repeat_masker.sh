#!/bin/bash

# Update your system
sudo apt-get update

# Install Python3
sudo apt-get install python3

# Install h5py python library
sudo apt install python3-h5py

# Install Perl
sudo apt-get install perl



# Download and install RMBlast
wget https://www.repeatmasker.org/rmblast/rmblast-2.14.0+-x64-linux.tar.gz
tar zxvf rmblast-2.14.0+-x64-linux.tar.gz -C /usr/local
rm rmblast-2.14.0+-x64-linux.tar.gz
# Download and install Tandem Repeat Finder
wget https://github.com/Benson-Genomics-Lab/TRF/releases/download/v4.09.1/trf409.linux64
chmod +x trf409.linux64
mv trf409.linux64 /usr/local/bin/trf
# Download and install RepeatMasker
wget https://www.repeatmasker.org/RepeatMasker/RepeatMasker-4.1.5.tar.gz
mv RepeatMasker-4.1.5.tar.gz /usr/local
cd /usr/local
gunzip RepeatMasker-4.1.5.tar.gz
tar xvf RepeatMasker-4.1.5.tar
sudo rm RepeatMasker-4.1.5.tar



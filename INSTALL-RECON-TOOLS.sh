#!/bin/sh

ACTUAL_PATH=$(pwd)

echo "###  INSTALLING SUBFINDER  ###"
git clone https://github.com/projectdiscovery/subfinder.git; cd subfinder/v2/cmd/subfinder;go build .;sudo mv subfinder /usr/local/bin/; subfinder -h; cd $ACTUAL_PATH

echo "###  INSTALLING ANEW  ###"
git clone https://github.com/tomnomnom/anew.git; cd anew; go build .; sudo mv anew /usr/local/bin/anew; anew -h; cd $ACTUAL_PATH

echo "###  INSTALLING HAKRAWLER  ###"
git clone https://github.com/hakluke/hakrawler.git; cd hakrawler; go build .; sudo mv hakrawler /usr/local/bin/hakrawler; hakrawler -h; cd $ACTUAL_PATH

echo "###  INSTALLING HTTPX  ###"
git clone https://github.com/projectdiscovery/httpx.git; cd httpx/cmd/httpx; go build .; sudo mv httpx /usr/local/bin/httpx; httpx -h; cd $ACTUAL_PATH

echo "###  INSTALLING HTML-TOOL ###"
wget https://raw.githubusercontent.com/tomnomnom/hacks/master/html-tool/main.go -O html-tool.go; go build html-tool.go; sudo mv html-tool /usr/local/bin/html-tool; html-tool -h; cd $ACTUAL_PATH

echo "###  INSTALLING JSUBFINDER  ###"
git clone https://github.com/hiddengearz/jsubfinder.git; cd jsubfinder; go build .; sudo mv jsubfinder /usr/local/bin/jsubfinder; jsubfinder -h; cd $ACTUAL_PATH

echo "###  INSTALLING JSUBFINDER - COPYING KEYS ###"
wget https://raw.githubusercontent.com/hiddengearz/jsubfinder/master/.jsf_signatures.yaml && mv .jsf_signatures.yaml ~/.jsf_signatures.yaml

echo "### INSTALLING GAU ###"
wget https://github.com/lc/gau/releases/download/v1.1.0/gau_1.1.0_linux_amd64.tar.gz -O gau.tar.gz; tar xvf gau.tar.gz; sudo mv gau /usr/local/bin/gau

echo "### INSTALLING DALFOX BY SNAP ###"
sudo snap install dalfox







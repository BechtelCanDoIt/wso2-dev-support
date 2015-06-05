#!/bin/bash

echo "==============================  OS Util Downloads  ============================="
echo " We are going to execute the following script to ensure you have these installed."
echo " This will probably ask for your password." 
echo ""
cat ./~getOsUtils.sh
echo ""
./~getOsUtils.sh
echo "================================================================================"

echo "============================  GitHub Util Downloads  ==========================="
echo " We are going to download the key WSO2 utils from GitHub now                    "
echo ""

if [ -f ./.installed ]
  then 
    rm -Rf ./tools
    rm .installed
fi

mkdir ./tools
cd ./tools

#Forked from https://github.com/rzrbld
git clone https://github.com/BechtelCanDoIt/bashStudio.git

#Forked from https://github.com/daveschoutens
git clone https://github.com/BechtelCanDoIt/format-xml.git
git clone https://github.com/BechtelCanDoIt/wso2-proxy-conflict-finder.git
git clone https://github.com/BechtelCanDoIt/pom-version-update.git

#Make sure we can execute
chmod +x bashStudio/bashStudio.sh
chmod +x format-xml/format-xml.sh
chmod +x pom-version-update/pom-version-update.sh
chmod +x wso2-proxy-conflict-finder/run.sh

cd ..
touch .installed

echo ""
echo "=================================================================================="
echo " All done with installations."
echo "=================================================================================="



#!/bin/bash

grep debian /etc/*-release
if [ $? -eq 0 ]
   then
     sudo apt-get install git
     sudo apt-get install xsltproc
     sudo apt-get install xmlstarlet
   else
     echo "Please install: "
     echo "                git"
     echo "                xsltproc "
     echo "                xmlstarlet"
fi


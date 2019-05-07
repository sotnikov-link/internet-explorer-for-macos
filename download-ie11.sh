#!/bin/sh

mkdir -p ./downloads \
&& cd ./downloads \
&& wget -O ./ie11.win7.vagrant.zip http://aka.ms/ie11.win7.vagrant \
&& unzip ./ie11.win7.vagrant.zip \
&& mv *.box ../ie11.win7.box

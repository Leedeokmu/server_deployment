#!/bin/bash

yum list java*jdk-devel
yum install java-1.8.0-openjdk-devel.x86_64
javac -version
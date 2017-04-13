#!/bin/bash

cd api-project
git rev-parse --short HEAD > ../output/git-commit-sha.txt

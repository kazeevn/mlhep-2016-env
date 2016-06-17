#!/bin/bash
set -e

source activate mlhep-2016
cd /tmp
git clone https://github.com/damianavila/RISE.git
cd RISE
git checkout 72ae4982d45c41d070290cb3bdb83449b6e9803b
python setup.py install

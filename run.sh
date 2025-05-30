#!/bin/bash

RUNPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ -e $RUNPATH/venv ]; then
    source $RUNPATH/venv/bin/activate
fi
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RUNPATH/SuperBuild/install/lib
export DYLD_LIBRARY_PATH=$RUNPATH/SuperBuild/install/lib

#Include the OpenSfM library in the environment variables
export PYTHONPATH=$PYTHONPATH:$RUNPATH/opensfm
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RUNPATH/opensfm/lib

python3 $RUNPATH/run.py "$@"


#!/bin/bash
rsync environment_setup.sh Bitstarter:~/

chmod 777 environment_setup.sh
./environment_setup.sh

ssh Bitstarter

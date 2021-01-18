#!/bin/bash

ansible -b -a "shutdown -r now" feds11
ansible -b -a "shutdown -r now" feds12

#!/bin/bash

if ! [ "$USER" ]
then
	printf "USER is no defined abort.."
	exit 1
fi

cat group_vars/all | sed "s/thdelmas/$USER/g" > new_all
mv new_all group_vars/all

python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

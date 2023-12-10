#!/bin/bash

jupyter nbconvert --to script final_milestone.ipynb
python app/final_milestone.py

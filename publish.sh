#!/bin/bash

echo "Cleaning up -- "
rm -rf dist
rm -rf build
rm -rf *.egg-info

echo "Building -- "
python3 setup.py sdist bdist_wheel

echo "Publishing -- "
twine upload dist/*

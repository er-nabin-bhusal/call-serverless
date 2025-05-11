#!/bin/bash

source venv/bin/activate

echo "Running test_local_chalice_async.py..."
python3 test_local_chalice_async.py

echo -e "\nRunning test_local_chalice.py..."
python3 test_local_chalice.py

echo -e "\nRunning test_local_async.py..."
python3 test_local_async.py

echo -e "\nRunning test_local.py..."
python3 test_local.py

echo -e "\nRunning test_local_large_body_async.py..."
python3 test_local_large_body_async.py

echo -e "\nRunning test_local_large_body.py..."
python3 test_local_large_body.py

echo -e "\nRunning test_local_post_order_async.py..."
python3 test_local_post_order_async.py

echo -e "\nRunning test_local_post_order.py..."
python3 test_local_post_order.py 
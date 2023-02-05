#!/bin/bash
cd /app
echo "----- Now deployed web booting your repo ------ " 
gunicorn app:app & python3 main.py

#!/bin/bash
cd /app
echo " https://github.com/anaksetan69/sub1.git"
gunicorn app:app & python3 

#!/bin/bash

sudo find . -type f -mtime -1 2>/dev/null > /root/file.txt

#!/usr/bin/env bash

watch -d -n 1 'ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'

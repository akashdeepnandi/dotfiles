#!/bin/sh

mpstat 1 1 | awk '/Average:/ && $2=="all" {printf "%02d%%\n", 100-$NF}'

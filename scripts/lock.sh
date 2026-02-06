#!/bin/bash
flock -n /tmp/$(basename "$1").lock -c "$1"
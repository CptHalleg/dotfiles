#!/bin/sh
action="$1"
shift
sigint_handler()
{
  kill $PID
  exit
}

trap sigint_handler SIGINT

while true; do
  $action &
  PID=$!
  inotifywait -e modify -e move -e create -e delete -e attrib -r $@
  kill $PID
done

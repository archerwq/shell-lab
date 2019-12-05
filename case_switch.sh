#!/bin/sh

case "$1" in
  start | up)
    echo "started"
    pwd
    ;;
  stop)
    echo "stopping..."
    ;;
  *)
    echo "Usage: $0 {start|up|stop}"
    ;;
esac
#!/bin/sh

set -e

function cleanup {
  kill $MUPDF_PID
}

trap cleanup EXIT

wait() {
  inotifywait -q -r src -r lib -r book.ly --format "%w%f" book.ly > /dev/null
}

check_mupdf() {
  ps -q $MUPDF_PID > /dev/null || return 1
}

launch_mupdf() {
    mupdf book.pdf&
    MUPDF_PID=$!
}

ensure_mupdf() {
  check_mupdf || launch_mupdf
}

refresh_mupdf() {
  check_mupdf && kill -HUP $MUPDF_PID
}

launch_mupdf

while true
do
  ensure_mupdf
  wait
  ./build.sh
  refresh_mupdf
done

#!/bin/sh

function cleanup {
  kill $MUPDF_PID
}

trap cleanup EXIT

wait() {
  inotifywait -q -r src -r lib --format "%w%f" book.ly > /dev/null
}

launch_mupdf() {
    mupdf book.pdf&
    MUPDF_PID=$!
}

ensure_mupdf() {
  ps -q $MUPDF_PID > /dev/null || launch_mupdf
}

launch_mupdf
while true
do
  ensure_mupdf
  wait
  ./build.sh
  kill -HUP $MUPDF_PID
done

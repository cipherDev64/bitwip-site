#!/bin/bash
cd "$(dirname "$0")"
PORT=8080
( sleep 1; open "http://localhost:$PORT/en/" ) &
echo "Serving at http://localhost:$PORT/en/  (close this window to stop)"
python3 -m http.server $PORT

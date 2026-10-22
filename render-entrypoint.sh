#!/bin/sh
set -eu
exec /opt/anisette-v3-server --host 0.0.0.0 --port "${PORT:-6969}"

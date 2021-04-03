#!/bin/bash
set -e
rm -f /QuanLyCanBo/tmp/pids/server.pid
exec "$@"

#!/bin/bash

cd /opt/loginserver && ./tfls &
cd /opt/querymanager && ./querymanager &
cd /opt/game/bin && ./game &

# Wait for any process to exit
wait -n

# Exit with status of process that exited first
exit $?

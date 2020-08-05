#!/usr/bin/env bash

cat << EOF > build/server.js
window.env = {
    "DOCKER_HOST": "${DOCKER_HOST}",
    "ACC_SCHEDULE_URL": "${ACC_SCHEDULE_URL}"
}
EOF

serve -s /app/build -l ${EXPRESS_PORT:-3000}
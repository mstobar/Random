#!/bin/sh

HOST=xx.xx.xx.xx
USER=username
PASS=secret

echo "Starting to sftp..."

lftp -u ${USER},${PASS} sftp://${HOST} <<EOF
put ./registro.db
bye
EOF

echo "done"

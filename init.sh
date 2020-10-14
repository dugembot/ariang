#! /bin/bash -eu

chmod +x /app/caddy.sh \
         /app/rclone.sh \
         /app/aria2c.sh

echo "**** give caddy permissions to use low ports ****"
setcap cap_net_bind_service=+ep /usr/local/bin/caddy

"${@-sh}"

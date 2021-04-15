#!/bin/bash
mkdir -p /Desktop
cat << EOF >  /Desktop/Chromium.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Chromium
Comment=Access the Internet
Exec=/usr/bin/chromium-browser --no-sandbox %U
Icon=chromium-browser
Path=
Terminal=false
StartupNotify=true
EOF

chmod +x /Desktop/Chromium.desktop
exec supervisord -c /app/supervisord.conf

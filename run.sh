#!/bin/bash
mkdir -p /Desktop
cat << EOF >  /Desktop/google-chrome.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=google-Chrome
Comment=Access the Internet
Exec=/usr/bin/google-chrome --no-sandbox %U
Icon=google-chrome
Path=
Terminal=false
StartupNotify=true
EOF

chmod +x /Desktop/google-chrome.desktop
exec supervisord -c /app/supervisord.conf

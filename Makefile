install:
	install mjpg-streamer@.service /usr/lib/systemd/system/
	install -m 0755 mjpg_streamer_v4l.sh /usr/local/bin
	systemctl daemon-reload

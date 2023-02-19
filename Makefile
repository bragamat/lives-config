start:
	docker run -d -p 1935:1935 \
		--name stream --restart always \
		--mount type=bind,source=$(pwd)/nginx.conf,target=/etc/nginx/nginx.conf \
		-e TWITCH_KEY=$(echo $TWITCH_KEY) \
		-e YOUTUBE_KEY=$(echo $YOUTUBE_KEY) \
		tiangolo/nginx-rtmp

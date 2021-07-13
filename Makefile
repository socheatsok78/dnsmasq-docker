build:
	@docker build --pull --rm \
		-f "Dockerfile" \
		-t dnsmasq:latest \
		. #context

run:
	@docker run -it --rm \
		--publish 53:53 \
		--publish 53:53/udp \
		--volume "./config/dnsmasq.conf:/etc/dnsmasq.conf" \
		dnsmasq:latest

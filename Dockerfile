FROM openjdk:8-jre

RUN \
	apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install wget \
	&& wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
	&& sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
	&& apt-get update \
	&& apt-get install google-chrome-stable

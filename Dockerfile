FROM aronzanon/ghostlivefyre

MAINTAINER Bixlabs, lclavijo@bixlabs.com

WORKDIR /usr/src/ghost

# Add manually css resources
ADD screen.css /usr/src/ghost/content/themes/casper/assets/css/screen.css
ADD ghost.css /usr/src/ghost/core/built/assets/ghost.css

# currently only works for development
ENV NODE_ENV development

# Port 2368 for ghost server
EXPOSE 2368
CMD ["/entrypoint.sh npm run"]

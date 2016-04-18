FROM aronzanon/ghostlivefyre

MAINTAINER Bixlabs, lclavijo@bixlabs.com

WORKDIR /usr/src/ghost

# Add manually css resources
ADD screen.css /usr/src/ghost/content/themes/casper/assets/css/screen.css
ADD ghost.css /usr/src/ghost/core/built/assets/ghost.css
ADD post.hbs /usr/src/ghost/content/themes/casper/post.hbs
ADD config.example.js /usr/src/ghost/config.example.js

# currently only works for development
ENV NODE_ENV development

# Port 2368 for ghost server
EXPOSE 2368
CMD /entrypoint.sh npm start

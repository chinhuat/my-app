FROM node:15.9.0-alpine3.13
WORKDIR /usr/src/app
# Since this is production build, we only need serve
RUN npm install -g serve
# Copy production build only as this is what we'll be serving.
# Be sure to run "npm run build" first to produce the build dir.
COPY build .
EXPOSE 5000
# TODO: enable https
CMD [ "serve", "-s", "." ]
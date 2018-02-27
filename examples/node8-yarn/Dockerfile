FROM outrigger/node:8-build as builder

# Only perform the yarn install if package.json or the lockfile changes.
# The insistence on asterisks for optional files prevents errors.
# By only attempting to copy some of the custom code, Docker will not
# reset the cache for this layer unless these specific files have changed.
COPY ./package.json ./yarn* ./.yarn* /code/
# Install our dependencies. Clean the cache just because.
RUN yarn install && yarn cache clean
# For npm, remove the above and instead use this:
# COPY ./package.json ./pakage* ./npm* ./.npm* /code/
# RUN npm install

FROM outrigger/node:8

LABEL name="Project Name" \
  org.label-schema.name="Project Name" \
  org.label-schema.description="A description of this thing. Maybe look at your package.json." \
  org.label-schema.vcs-url="https://github.com/yourorg/projectname" \
  org.label-schema.schema-version="1.0"

COPY --from=builder /code/node_modules /code/

# Now copy the rest of the codebase.
# The .dockerignore file is important to avoid clobbering the dependencies
# just copied in, in the event the local host has node_modules.
COPY . /code

# Start the service using the configured start script in package.json.
# To use the image another way run the container with an explicit command.
# This assumes your package.json has a configured start script which looks
# something like "node ./index.js"
CMD ["yarn", "start"]

# For npm, replace the last line:
# CMD ["npm", "start"]

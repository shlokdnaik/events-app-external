# Use Google base image for NodeJS
FROM launcher.gcr.io/google/nodejs

# Copy application code.
COPY . /events-app-external/

# Change the working directory
WORKDIR /events-app-external

# Install dependencies.
RUN npm install

# Start the Express app
CMD ["node", "server.js"]

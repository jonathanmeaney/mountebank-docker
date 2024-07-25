# Use the official Node.js image as a base image
FROM node:22.3.0-alpine

# Set the working directory
WORKDIR /app

# Install Mountebank
RUN npm install -g mountebank@2.9.1

# Copy the imposters configuration file into the container
COPY imposters.ejs /app/imposters.ejs

# Expose the default Mountebank port and the custom port for your imposters
EXPOSE 2525 4545

# Command to run Mountebank with the imposters configuration
CMD ["mb", "start", "--configfile", "/app/imposters.ejs", "--allowInjection"]

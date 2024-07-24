# Use the official Node.js image as a base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Install Mountebank
RUN npm install -g mountebank@2.5.0

# Expose the default Mountebank port
EXPOSE 2525

# Command to run Mountebank
CMD ["mb", "start", "--allowInjection"]

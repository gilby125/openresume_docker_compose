# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Clone the repository and set the working directory
RUN git clone https://github.com/xitanggg/open-resume.git . && cd open-resume

# Install dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 3900

# Command to run the application
CMD ["npm", "run", "dev"]

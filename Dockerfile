FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and yarn.lock files to the container
COPY package.json yarn.lock ./

# Install application dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Start the application when the container starts
CMD ["node", "index.js"]


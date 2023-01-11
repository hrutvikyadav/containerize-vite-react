# specify node image to build the new image from and run the subsequent commands
FROM node

# specify which working directory to run the next commands from
WORKDIR /clientapp

#first [l-8] copy package.json and [l-10] install dependencies...this will also generate the node_modules
COPY package*.json ./
# run in shell mode
RUN npm install

# copy rest of the local app directory to container
COPY . .

# serves as documentation- use this as container port number with -p flag while running
# this is done because insiside container, vite dev server is running here
EXPOSE 5173

# run in exec mode, (without opening shell)
CMD ["npm", "run", "dev" ]

# Containerize Vite app

## Create a vite app

```bash
$ npm create vite@latest
✔ Project name: … test-docker-1
✔ Select a framework: › React
✔ Select a variant: › TypeScript

Scaffolding project in /home/hrutvik_/docker/test-docker-1...

Done. Now run:

  cd test-docker-1
  npm install
  npm run dev
```

## Check if app is working properly

`npm install`

```bash
$ npm run dev

> test-docker-1@0.0.0 dev
> vite


  VITE v4.0.4  ready in 262 ms

  ➜  Local:   http://localhost:5173/
  ➜  Network: use --host to expose
  ➜  press h to show help
```

> If above message is displayed, proceed

## Change `defineConfig` in `vite.config.ts`

> Add below code before plugins
  server: {
    host: '0.0.0.0',
    port: 5173
  },

## Add Dockerfile

Create a new `Dockerfile` in the project _root directory_\
**The Image will be generated from Dockerfile**

## Build the Image

In terminal, build image using Dockerfile
`docker build -t hrutviky/firstapp:1.0 .`
> note: the last option ("." in this case) is path of docker file\
> above command returns the image id

## Run the container

with the new image id, or image tag, start a container by running
`docker run -dp 5173:5173 hrutviky/firstapp:1.0`
-d is for detached, i.e. container will run in detached mode so we can use terminal to run other process.
-p will actually publish the port 
***JUST EXPOSING IN DOCKERFILE WILL NOT OPEN THE PORT FOR EXTERNAL CONNECTIONS
	EXPOSE(from Dockerfile) is only for documentation purposes so that clients know what port to expose with -p flag when running the container

  
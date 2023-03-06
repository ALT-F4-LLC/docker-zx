# docker-zx

Dockerfile for running zx scripts.

## Usage

This container uses [google/zx](https://github.com/google/zx) as an `entrypoint` to run `.mjs` files. To run files in this container you must mount your source code or use this image as a base image.

- Create an `example.mjs`:

```js
#!/usr/bin/env zx

process.env.FOO = "world"

let containers = await $`echo Hello, ${process.env.FOO}!`

console.log(containers.exitCode)
```

- Mount `example.mjs` path and run:

```bash
docker container run -v "$(pwd):/code" erkrnt/zx:1.2.3 /code/example.mjs
```

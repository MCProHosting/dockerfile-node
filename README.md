# dockerfile-node

This repository contains a Dockerfile for usage with Node.js apps.

It contains a few important distinctions from [dockerfile/nodejs](https://github.com/dockerfile/nodejs):
  - Doens't install python
  - Doesn't install bower
  - Uses the latest version of Ubuntu
  - Requires `npm@next` to fix some issues
  - Contains build tools, to support building some packages from source

## License

MIT - Copyright (c) Beam 2015

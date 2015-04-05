#
# node.js dockerfile
# Copyright (c) Beam 2015
#
# https://github.com/MCProHosting/dockerfile-node
#

# Import the base box
FROM ubuntu:14.04

# On the Ubuntu side of things, we need some compilers, curl and git to
# to get everything running.  A call to update is ran first, then install
# with the -y argument to automatically say "Yes" to every install. 
RUN apt-get update
RUN apt-get install -y build-essential libssl-dev curl git

# Once we have the necessary packages, we curl down node, and pipe
# it right into bash. Normally, apt-get would be used here, but node is
# _frequently_ outdated on the Ubuntu repos, so it's built from source instead.
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN sudo apt-get install -y nodejs

# We install npm@next to prevent an ugly race condition that inhibits
# npm install from running smoothly.  See (npm/npm#6309).
RUN npm -g install npm@next

# Start it up.
CMD ["node", "app"]

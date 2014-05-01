# Clone and build a Hakyll site
#
# See https://github.com/noteed/docker-hakyll.

from ubuntu
maintainer Vo Minh Thu <noteed@gmail.com>

run apt-get update
run apt-get install -q -y language-pack-en
run update-locale LANG=en_US.UTF-8

run apt-get install -q -y git
run apt-get install -q -y ghc cabal-install
run apt-get install -q -y zlib1g-dev

run useradd -s /bin/bash -m hakyll

run su hakyll -c 'cabal update'
run su hakyll -c 'cabal install hakyll'

add build /home/hakyll/build

user hakyll
env HOME /home/hakyll
env LANG en_US.UTF-8
workdir /home/hakyll

entrypoint ["/home/hakyll/build"]

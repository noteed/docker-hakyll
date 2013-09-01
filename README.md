# docker-hakyll

This repository holds a Dockerfile (to create a Docker image) to clone and
build a Hakyll website.

You can build your own image or use
[`noteed/hakyll`](https://index.docker.io/u/noteed/hakyll/) which was built
with this Dockerfile.

When the image is run, it will clone a Git repository, enter it, and run the
Hakyll `site.hs` executable the repository is supposed to contain. The
resulting static web site can be copied using `docker cp`.

    > docker run -d noteed/hakyll git@github.com:user/repository.git
    51a79e169b9b
    > docker wait 51a79e169b9b
    0
    > docker cp 51a79e169b9b:/home/hakyll/clone/_site .

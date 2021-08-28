# jekyll-theme-n13org

A Jekyll theme based on zurb foundation-sites

## First Time Setup - Create the Gemfile and Gemfile.lock

```shell
docker run --rm \
  -v "$PWD":/usr/src/app \
  -w /usr/src/app \
  ruby:alpine \
  test -f Gemfile \
  && echo "Gemfile already exits" \
  || (bundle init && bundle install)
```

## Docker

Build docker image `jekyll-theme-n13org`

```shell
docker build -t jekyll-theme-n13org .
```

Run the docker image `jekyll-theme-n13org` as container with the name `jekyll-theme-n13org-builder` as interactve shell. To exit the shell just type `exit`.

```shell
docker run --rm -it --name jekyll-theme-n13org-builder -v "$PWD":/usr/src/app jekyll-theme-n13org /bin/sh
```

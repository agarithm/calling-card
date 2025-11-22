# calling-card

A static website for Mike Agar's link tree.

## Build Steps

1) Run `./build.sh` to regenerate the HTML files from the markdown files.

2) All commits to `main` will trigger a deployment to Firebase Hosting.

## How to run locally

1) Run `npm install -g http-server firebase-tools`

2) Run `./serve.sh`

3) Open a browser and navigate to `http://localhost:8080`

## Additional Notes

You'll need Pandoc installed to build the site.

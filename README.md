# Cyberchef Docker

The only reason I made this is to gaurantee a tamper-free image of cyberchef based on a specific version.

The images and their tags (cyberchef versions) are available at `vertoforce/cyberchef`.

## Run

```sh
docker run -p 80:80 vertoforce/cyberchef
```

## Building a new image

To build a new image

1. Download cyberchef from [here](https://gchq.github.io/CyberChef/).
2. Extract the zip file
3. Rename the extracted folder to something easy and set `CYBERCHEF_DIR` to it, like `cyberchef`
4. In the folder, rename `CyberChef_x.html` to `index.html`
5. Build the image

```sh
# Set optional version
export CYBERCHEF_VERSION=x
export CYBERCHEF_DIR=./cyberchef
docker build --build-arg CYBERCHEF_DIR=${CYBERCHEF_DIR:-./cyberchef} -t vertoforce/cyberchef:${CYBERCHEF_VERSION:-0} .
```

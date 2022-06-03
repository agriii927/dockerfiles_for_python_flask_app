# Flask app
Simple web app based on Flask framework.

![изображение](https://user-images.githubusercontent.com/67045661/171044270-e4878cd7-8867-4f73-a495-748e44b4cdf0.png)


## Why Flask?
Flask is a lightweight Python web framework that provides useful tools and features for creating web applications in the Python Language. It gives developers flexibility and is an accessible framework for new developers because you can build a web application quickly using only a single Python file. Flask is also extensible and doesn’t force a particular directory structure or require complicated boilerplate code before getting started.

## Flask and Docker
The repository contain Dockerfile in order to build and run Flask app in Docker container in any environment / OS.

## How to RUN
1. Choose your distro (alpine / debian bullseye)
2. Run this:
```bash
docker build -f CHOSEN_DISTRO_FILE --build-arg PYTHON_VERSION=$PYTHON_VERSION -t flask_app .
docker run -d -p 5000:5000 flask_app
```

## Example of running (if you want alpine python image with python3.9)
```bash
docker build -f Dockerfile --build-arg PYTHON_VERSION=3.9 -t flask_app .
docker run -d -p 5000:5000 flask_app
```
## Example of running (if you want debian bullseye python image with default python3.10)
```bash
docker build -f Dockerfile.debian -t flask_app .
docker run -d -p 5000:5000 flask_app
```

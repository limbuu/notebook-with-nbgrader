# notebook-with-nbgrader

## Prerequisites
You must have latest docker ce installed.

    $ docker version
## Clone the repo 
    $ git clone https://github.com/limbuu/notebook-with-nbgrader
## Build Image
Now, build docker image 
    $ docker build -t notebook-image .
## Run the newly build image
    $ docker run -it -p 8888:8888 notebook-image 
## Access notebook using the url

## Add assignments and do grading 

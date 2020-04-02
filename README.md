# notebook-with-nbgrader

## Prerequisites
You must have docker installed first.

    $ docker version
## Clone the repo 
Clone the repo in your local directory.

    $ git clone https://github.com/limbuu/notebook-with-nbgrader
## Build Image
Now, build docker image as: 

    $ docker build -t notebook-image .
## Run the newly build image
Execute the command to run the newly build notebook image.

    $ docker run -it -p 8888:8888 notebook-image 
## Access notebook using the url
Running the image gives docker logs where you get the url to access notebook like :

    $  http://127.0.0.1:8888/?token=3c10f42b1f30c3d992afd6be3c6cb0e81f255504bc204a23
    
Open that link and access notebook in your browser.
## Add assignments and do grading 

Build the Dockerfile with the following command: `docker build -t <new image name> .`
- Note: run this command at the same directory where Dockerfile is in because the commands are relative to the working directory

Start a container with the new image with the following command: `docker run --name postgres -d postgres_v1`
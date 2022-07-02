Build the Dockerfile with the following command: `docker build -t <new image name> .`
- Note: run this command at the same directory where Dockerfile is in because the commands are relative to the working directory

Start a container with the new image with the following command: `docker run --name postgres -d postgres_v1`

To run the SQL query, do the following:
1. Access the container by `docker exec -it postgres bash`
2. Start the psql shell using `psql -U postgres`
3. Run the SQL query
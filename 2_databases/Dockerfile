FROM postgres:latest

# setting the environment variables
ENV POSTGRES_PASSWORD secretpassword

# add the sql file into the image/container
COPY create_tables.sql /docker-entrypoint-initdb.d/
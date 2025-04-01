FROM node

# Environment variable for MongoDB Credentials
ENV MONGO_DB_USERNAME=admin\
    MONGO_DB_PWD=qwerty

# Create and Set working directory
RUN mkdir -p dockerTestApp

# Copy contents of current directory into working directory
COPY . /dockerTestApp

CMD ["node", "/dockerTestApp/server.js"]
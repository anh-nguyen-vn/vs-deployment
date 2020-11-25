## Dev Project - Youtube videos sharing
Video sharing

### Project Requirements
* JDK 1.8.x
* Maven 3.6.x
* NPM
* Docker

### High Level Design
Refer to HighLevelDesign.png

### Run seprated single service
Go to each repo and follow instruction there

### Run with docker-compose
1. Install Docker from https://docs.docker.com/get-docker/
2. Run run.sh
3. Go to http://localhost:9080 and enjoy

### Run API integration test with Postman
1. Install Postman from https://www.postman.com/downloads/
2. Go to folder integration-test
3. Open Postman and import video-sharing.postman_collection.json
4. Import Environments: LOCAL.postman_environment.json and DEV.postman_environment.json
6. Run test with corresponding environment using Runner
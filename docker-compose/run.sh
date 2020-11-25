#!/bin/bash

echo "VIDEO SHARING"
echo "Starting System..."

# centralized-configuration
echo "======= centralized-configuration ======="
cd ../../centralized-configuration/
mvn clean install -DskipTests
echo "Packaging..."
mvn package -DskipTests
echo "======= DONE: centralized-configuration ======="

# api-gateway
echo "======= api-gateway ======="
cd ../api-gateway/
mvn clean install -DskipTests
echo "Packaging..."
mvn package -DskipTests
echo "======= DONE: api-gateway ======="

# api-gateway
echo "======= user-profile ======="
cd ../user-profile/
mvn clean install -DskipTests
echo "Packaging..."
mvn package -DskipTests
echo "======= DONE: user-profile ======="

cd ../deployment/docker-compose/
echo "Deploying package into docker container..."
docker-compose up --build

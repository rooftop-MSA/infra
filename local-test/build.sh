#!/bin/bash

directory="./"

echo "Reset legacy build files"

rm -rf ./docker-files/*.jar
rm -rf ./*-server

echo "Build identity server"

git clone --recursive https://github.com/rooftop-MSA/identity-server.git
cd identity-server || exit
./gradlew clean build
cp ./build/libs/*.jar ../docker-files/identity-server.jar
cd ..

for file in "$directory"*.jar; do
    echo "$file"
done

echo "Build shop server"

git clone --recursive https://github.com/rooftop-MSA/shop-server.git
cd shop-server || exit
./gradlew clean build
cp ./build/libs/*.jar ../docker-files/shop-server.jar
cd ..

for file in "$directory"*.jar; do
    echo "$file"
done

echo "Build order server"

git clone --recursive https://github.com/rooftop-MSA/order-server.git
cd order-server || exit
./gradlew clean build
cp ./build/libs/*.jar ../docker-files/order-server.jar
cd ..

for file in "$directory"*.jar; do
    echo "$file"
done

echo "Build pay server"

git clone --recursive https://github.com/rooftop-MSA/pay-server.git
cd pay-server || exit
./gradlew clean build
cp ./build/libs/*.jar ../docker-files/pay-server.jar
cd ..

for file in "$directory"*.jar; do
    echo "$file"
done

echo "Build done"

rm -rf ./*-server

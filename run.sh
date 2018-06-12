#!/bin/bash
version=latest
while getopts bv: option
do
    case "${option}"
    in
        b) ./build.sh;;
        v) version=${OPTARG}
    esac
done
echo Running image at version:$version
docker run -p 5080:5080 data-collector:$version
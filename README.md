# jenkins-compose
Jenkins container image with Docker and Docker-Compose
### Usage
```
mkdir docker/jenkins
export VOLUME_DIR=$PWD/docker/jenkins
sudo chown -R 1000:1000 $VOLUME_DIR
docker run -u 'jenkins' --rm -p 8080:8080 -p 4040:4040 -v /var/run/docker.sock:/var/run/docker.sock -v $VOLUME_DIR:/var/jenkins_home ivanturianytsia/jenkins-compose
```

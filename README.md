# conjur-authn-jenkins

How to add the `authn-jenkins` authenticator to your conjur instance.

## Dockerfile Example
```bash
git clone https://github.com/AndrewCopeland/conjur-authn-jenkins
cd conjur-authn-jenkins
IMAGE_NAME=conjur-jenkins:11.1.1
docker build -t "$IMAGE_NAME" .

docker container run -d --name conjur-master --network conjur --security-opt=seccomp:unconfined -p 443:443 -p 5432:5432 -p 1999:1999 $IMAGE_NAME
docker exec conjur-master evoke configure master --accept-eula --hostname conjur-master --admin-password Cyberark1 conjur
```

## Volume Mount Example
```bash
git clone https://github.com/AndrewCopeland/conjur-authn-jenkins
cd conjur-authn-jenkins
IMAGE_NAME=cyberark/dap:11.1.1
docker container run -d --name conjur-master --network conjur --security-opt=seccomp:unconfined -p 443:443 -p 5432:5432 -p 1999:1999 -v "$(pwd)/authn_jenkins:/opt/conjur/possum/app/domain/authentication/authn_jenkins" $IMAGE_NAME
docker exec conjur-master evoke configure master --accept-eula --hostname conjur-master --admin-password Cyberark1 conjur
```

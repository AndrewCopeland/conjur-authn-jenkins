# conjur-authn-jenkins

Volume mount the authenticator to the conjur instance

## Example
```bash
git clone https://github.com/AndrewCopeland/conjur-authn-jenkins
cd conjur-authn-jenkins
IMAGE_NAME=cyberark/dap:11.1.1
docker container run -d --name conjur-master --network conjur --security-opt=seccomp:unconfined -p 443:443 -p 5432:5432 -p 1999:1999 -v "$(pwd)/authn_jenkins:/opt/conjur/possum/app/domain/authentication/authn_jenkins" $IMAGE_NAME
docker exec conjur-master evoke configure master --accept-eula --hostname conjur-master --admin-password Cyberark1 conjur
```

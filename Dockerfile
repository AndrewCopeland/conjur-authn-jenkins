FROM captainfluffytoes/dap:11.1.1
COPY ./authn_jenkins /opt/conjur/possum/app/domain/authentication/authn_jenkins
ENV CONJUR_AUTHENTICATORS=authn,authn-jenkins/test

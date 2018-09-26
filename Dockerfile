FROM lachlanevenson/k8s-kubectl:v1.10.8

WORKDIR /myapp

ADD run.sh /run.sh
ENTRYPOINT ["/run.sh"]

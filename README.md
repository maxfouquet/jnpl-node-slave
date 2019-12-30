## Jenkins node slave

A docker image of Jenkins `JNLP` based agent equipped with Node.js and Sonarqube scanner.

***

**Running**

```sh
$ docker run -d \
    --net host \
    -e JENKINS_URL=http://jenkins.internal.domain:8080 \
    -e JENKINS_AUTH=registrator:1234567890123456789012  \
    -v /path/to:/var/jenkins_home \
    maxfouquet/jnpl-node-slave
```

***
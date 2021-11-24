# Hello World

Status of Last Deployment:<br>
<img src="https://github.com/sanchev/HelloWorld/workflows/dockerpush/badge.svg?branch=master"><br>

Hello World SpringBoot Application

## Deployment
Deployment process as easy as possible:
Required software:
- terminal for running bash scripts
- docker
- docker-compose

To deploy application, switch to needed branch and run bash script:

```shell
$ bash start.sh ${message_text}
```

That's all.

# Local development
For local development and testing, use `docker-compose-test.yml`. 
Run command: 
```shell
docker-compose -f docker-compose-test.yml up
```
Next step, is to run SpringBoot app with configured **Edit Configuration** in which env var is provided: 

```shell
message.text=${MESSAGE_TEXT}
```

Add VM Options: 

```shell
-Dspring.profiles.active=test
```

 With these configurations - run SpringBoot main method.

# Technological stack
- SpringBoot as a skeleton framework

## License
This project is Apache License 2.0 - see the [LICENSE](../HelloWorld/LICENSE) file for details.

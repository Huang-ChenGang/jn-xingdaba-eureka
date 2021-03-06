#!/usr/bin/env bash

gradle clean -x test build

docker build --no-cache -t xingdaba/xingdaba-eureka .

docker tag xingdaba/xingdaba-eureka hub.c.163.com/riyuexingchenace/xingdaba/xingdaba-eureka:latest

docker push hub.c.163.com/riyuexingchenace/xingdaba/xingdaba-eureka:latest

#!/bin/bash

SERVICE=$1
ACTION=$2

start_dns() {
    docker build -t dns-server ./dns
    docker run -d --name dns-server \
        --network asa-net \
        --ip 172.20.0.2 \
        dns-server
}

stop_dns() {
    docker stop dns-server
    docker rm dns-server
}

start_web() {
    docker build -t web-server ./web
    docker run -d --name web-server \
        --network asa-net \
        --ip 172.20.0.3 \
        web-server
}

stop_web() {
    docker stop web-server
    docker rm web-server
}

case "$SERVICE" in
    dns)
        if [ "$ACTION" == "start" ]; then
            start_dns
        elif [ "$ACTION" == "stop" ]; then
            stop_dns
        else
            echo "Ação inválida para dns: use start ou stop"
        fi
        ;;
    web)
        if [ "$ACTION" == "start" ]; then
            start_web
        elif [ "$ACTION" == "stop" ]; then
            stop_web
        else
            echo "Ação inválida para web: use start ou stop"
        fi
        ;;
    all)
        if [ "$ACTION" == "start" ]; then
            start_dns
            start_web
        elif [ "$ACTION" == "stop" ]; then
            stop_dns
            stop_web
        else
            echo "Ação inválida para all: use start ou stop"
        fi
        ;;
    *)
        echo "Serviço inválido: use dns, web ou all"
        ;;
esac
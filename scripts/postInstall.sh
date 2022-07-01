#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
sleep 10s;

#register the local server in the web ui
curl --output /dev/null --header "Content-Type: application/json" \
 --request POST --data '{ "name": "local", "connectionType": "STANDALONE", "host": "redis","port": '"$REDIS_INTERNAL_PORT"',"password": "'"$SOFTWARE_PASSWORD"'"}' \
 http://$INSIGHT_INTERNAL_IP:$INSIGHT_INTERNAL_PORT/api/instance/

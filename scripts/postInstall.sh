set -o allexport; source .env; set +o allexport;

#register the local server in the web ui
curl --header "Content-Type: application/json" \
 --request POST --data '{ "name": "local", "connectionType": "STANDALONE", "host": "'"$REDIS_INTERNAL_IP"'","port": '"$REDIS_INTERNAL_PORT"',"password": "'"$SOFTWARE_PASSWORD"'"}' \
 http://$INSIGHT_INTERNAL_IP:$INSIGHT_INTERNAL_PORT/api/instance/

#register the local server in the web ui
curl --header "Content-Type: application/json" \
 --request POST --data '{ "name": "local", "connectionType": "STANDALONE", "host": "'"$APP_IP"'","port": '"$APP_PORT"',"password": "'"$SOFTWARE_PASSWORD"'"}' \
 http://$APP_IP:$APP_PORT/api/instance/

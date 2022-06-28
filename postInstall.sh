#register the local server in the web ui
curl --header "Content-Type: application/json" \
 --request POST --data '{ "name": "local", "connectionType": "STANDALONE", "host": "172.17.0.1","port": 6379,"password": "'"$SOFTWARE_PASSWORD"'"}' \
 http://172.17.0.1:8001/api/instance/

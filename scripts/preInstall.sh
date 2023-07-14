#install redis tools (used for backup/restore)
apt install -y redis-tools

mkdir -p ./insight
chown -R 1000:1000 ./insight

mkdir -p ./data
chown -R 1000:1000 ./data
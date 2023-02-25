docker ps
cp -p /home/ubuntu/freefee/conf/config-harvesting.properties_free /home/ubuntu/symbol-bootstrap/target/nodes/node/server-config/resources/config-harvesting.properties
cd /home/ubuntu/https-portal
docker-compose down
sleep 5
cd /home/ubuntu/symbol-bootstrap
symbol-bootstrap stop
sleep 5
symbol-bootstrap run --detached
sleep 5
cd /home/ubuntu/https-portal
docker-compose up -d
symbol-bootstrap healthCheck
docker ps
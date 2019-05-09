export host_name=[[KATACODA_HOST]]
export sub_domain=[[HOST_SUBDOMAIN]]
sed -i -e "s/HOST_SUBDOMAIN/$sub_domain/g" /root/service-nodejs/keycloak.json
sed -i -e "s/KATACODA_HOST/$host_name/g" /root/service-nodejs/keycloak.json 
sed -i -e "s/HOST_SUBDOMAIN/$sub_domain/g" /root/application/script/app.js
sed -i -e "s/KATACODA_HOST/$host_name/g" /root/application/script/app.js
sed -i -e "s/HOST_SUBDOMAIN/$sub_domain/g" /root/application/index.html
sed -i -e "s/KATACODA_HOST/$host_name/g" /root/application/index.html
sed -i -e "s/HOST_SUBDOMAIN/$sub_domain/g" /root/web-client.json
sed -i -e "s/KATACODA_HOST/$host_name/g" /root/web-client.json

cd /root/service-nodejs
npm install
npm start &
cd ..
curl https://downloads.jboss.org/keycloak/6.0.1/keycloak-6.0.1.zip --output keycloak-6.0.1.zip
yum install -y unzip
yum install -y jq
unzip keycloak-6.0.1.zip
cd keycloak-6.0.1/bin
./add-user-keycloak.sh -r master -u admin -p admin
./standalone.sh -b 0.0.0.0 -Dkeycloak.migration.action=import -Dkeycloak.migration.provider=singleFile -Dkeycloak.migration.file=/root/katacoda.json -Dkeycloak.migration.strategy=OVERWRITE_EXISTING


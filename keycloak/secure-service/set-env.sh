curl https://downloads.jboss.org/keycloak/6.0.0/keycloak-6.0.0.zip --output keycloak-6.0.0.zip
yum install -y unzip
yum install -y jq
unzip keycloak-6.0.0.zip
cd keycloak-6.0.0/bin
./add-user-keycloak.sh -r master -u admin -p admin
./standalone.sh -b 0.0.0.0 -Dkeycloak.migration.action=import -Dkeycloak.migration.provider=singleFile -Dkeycloak.migration.file=/root/katacoda.json -Dkeycloak.migration.strategy=OVERWRITE_EXISTING


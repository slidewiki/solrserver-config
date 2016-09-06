# solrserver-config


For first time set up, run the following on the docker host machine.
If you want to use a different path than /home/docker-volumes/swiksolr, then the file docker-compose.yml must be modified

```
#create the direcotry that it will host the solr data that needs to be persisted outside the docker container
mkdir -p /home/docker-volumes/swiksolr/solr-data
cd /home/docker-volumes/swiksolr

#download the configuration for the solr core
git clone https://github.com/slidewiki/solrserver-config.git

chown -R 8983:8983 /home/docker-volumes/swiksolr

#start docker
cd solrserver-config/
docker-compose up
```

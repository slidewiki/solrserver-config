# solrserver-config

As Solr uses it's own user inside the container, you need to run the following script before running `docker-compose up`.

```
# Clone this repo and change into it

#Prepend sudo if needed
chown -R 8983:8983 ./solr-*

#start Solr
docker-compose up
```

Now the permissions do not allow git to access these folders, so in case you want to modify something in there, you need to reassign permission to your own user by:

```
chown -R myself:myself ./solr-*
```

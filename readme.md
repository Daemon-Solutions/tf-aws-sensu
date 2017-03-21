Currently, the only manual procedure here is to edit the below section of the userdata template to point to the elasticache endpoint.

```#config elasticache/redis datastore server location
echo '{
  "redis": {
    "host": "sensu-elasticache.5u6yjd.0001.euw1.cache.amazonaws.com",
    "port": 6379
  }
}' | tee /etc/sensu/conf.d/redis.json
```
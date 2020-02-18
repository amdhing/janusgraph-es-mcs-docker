POC for connecting Janusgraph https://janusgraph.org/ with ElasticSearch(docker) AND Apache Cassandra(docker)

- JanusGraph (docker): https://hub.docker.com/r/janusgraph/janusgraph
- ElasticSearch (docker): https://hub.docker.com/_/elasticsearch
- Apache Cassandra (docker): https://hub.docker.com/_/cassandra

Next step, to connect Janusgraph to ElasticSearch(docker) AND Amazon Managed Cassandra

- Amazon Managed Cassandra: https://docs.aws.amazon.com/mcs/latest/devguide/what-is-mcs.html


For ElasticSearch(docker)
`$ docker run -d -rm --name elasticsearch --net host -e "discovery.type=single-node" elasticsearch:6.8.6`

For Apache Cassandra(docker)
`$ docker run --name cassandra -d --rm -v $PWD/logs:/var/log/cassandra -e CASSANDRA_START_RPC=true  --net host cassandra:3.11`

For Janusgraph(docker)
`$ cd janusgraph/
$ docker build . -t my-janusgraph
$ docker run -d --rm --net host my-janusgraph:latest`
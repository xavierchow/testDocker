# testDocker

2 Things worth to note for running a node service in docker container hosted by travis-ci.

1. node_modules tricky 
  * http://stackoverflow.com/a/32785014/4550665
  * I think pulling the node_modules dir to upper level is a better choice.
  
2. service is not really available even it shows up in the `docker-compose ps`, sometimes calling the service too early might get a `connection reset error`.
  * delay the calling properly, e.g. using while-try sniff.

# Metrics collectors

This is compose file for metrics collectors to be used together with Prometheus:

 - [Node Exporter](https://github.com/prometheus/node_exporter) to collect system level metrics from the hosts.
 - [cAdvisor](https://github.com/google/cadvisor) to collect metrics from containers running on all hosts.

The collectors don't store metrics anywhere and just provide them to external monitoring system (Prometheus)

Deploying the stack to Docker Swarm automatically starts each of the containers on every Docker Swarm node.

## License and authors

* Author:: Timur Batyrshin <timurb@hey.com>
* License:: MIT

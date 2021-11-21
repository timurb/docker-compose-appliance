# Various appliances packaged into Docker Compose

This is the collection of various appliances to be run either using Docker Compose or deployed on Docker Swarm.

The intent is to use these as building blocks for lab and production setups.

## Requirements

All appliances should fulfil the following requirements:
- **Single Responsibility Principle:** one appliance fulfils one role. Don't combine several roles into a single docker-compose file
- **Open-Closed Principle:** (open for extension, closed for modification) main docker-compose file should not require any changes for deployment. At the same time it should be easy to extend using overrides or environment variables
- Should be able to run both on compose and swarm with minimal modification using Open-Closed Principle
- Integrated with [Traefik](https://traefik.io) if applicable

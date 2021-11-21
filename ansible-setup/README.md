# Setting up appliances on target hosts

This directory holds scripts to set up appliances on target hosts.

**Motivation:** you can run most appliances by simply calling `docker stack deploy ...` but this way is too cryptic for unqualified personnel. For that reason you need a dedicated installation target visible for sysadmins.

## Requirements

- One folder per appliance
- All data for the appliance is held inside the folder
- Configs and logs are local and explicit
- As little OS level dependencies as possible
- Start/stop/reload scripts
- README to be deployed

Ansible roles are not used by design: we want to keep repository small and flat.

## Usage
TBD

## License and authors

* Author:: Timur Batyrshin <timurb@hey.com>
* License:: MIT

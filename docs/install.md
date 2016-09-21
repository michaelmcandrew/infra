# Setting up the control machine

## Assumptions

We are running a currently supported Ubuntu LTS machine.

## Instructions

1. Download and run the [initialisation script]('../init-control-machine.sh').
```bash
wget https://raw.githubusercontent.com/michaelmcandrew/infra/master/ansible/init-control-machine.sh
bash init-control-machine.sh
```
2. Populate the `ansible/vault` directory with appropriate keys, credentials, passwords, etc.
3. Run playbooks as required.
  

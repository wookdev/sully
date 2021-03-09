# sully

Wook's Raspberry Pi k8s cluster management project.

## Playbooks:

### set-pi-root.yaml

Adds kube and wook ssh keys to root user, and turns on
PermitRootLogin with keys only.  Connects as user ubuntu and becomes root
via sudo.

    ansible-playbook set-pi-root.yaml

## Roles:

### pi-root

Details:

------------------|--------------------
Dirs: | files, tasks
Handlers: | "reboot server"
Files: | PermitRootLogin.conf

### handlers

Intended to collect handlers used globally in one place

Details:

-------------------|--------------------
Dirs: | handlers
Handlers: | "reboot server"


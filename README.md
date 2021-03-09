# sully

Wook's Raspberry Pi k8s cluster management project.

## Playbooks:

### set-pi-root.yaml

Adds kube and wook ssh keys to root user, and turns on
PermitRootLogin with keys only.  Connects as user ubuntu and becomes root
via sudo.

``` shell
ansible-playbook set-pi-root.yaml
```

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

### set-pi-users.yaml

    Roles: pi-users
    Meta: no

Renames the user `ubuntu` to `wook`, and cleans up home directory, cloud-init,
and sudo with nopasswd.
Adds user `kube` and pushes ssh keys to it, as well as setting up authorized keys.

``` shell
ansible-playbook set-pi-users.yaml
```

### Role: common

Right now, only has the `reboot server` handler in it.

This role is for common stuff used by other roles.  It is called by adding a dependency
to the meta directory of the roles that need it.
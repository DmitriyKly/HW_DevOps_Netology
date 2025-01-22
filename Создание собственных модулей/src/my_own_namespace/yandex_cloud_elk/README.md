# Ansible Collection - my_own_namespace.yandex_cloud_elk

Documentation for the collection.

```markdown
# yandex_cloud_elk

## Description
This collection includes a custom Ansible module to create a text file on a remote host.

## Module
### create_file
- **Parameters**
  - `path`: The path to the file to create on the remote host.
  - `content`: The content to write to the file.

## Role
### my_role
- Creates a text file using the `create_file` module with default parameters specified in `defaults/main.yml`.

## Example Playbook
```yaml
---
- name: Use the role to create a text file
  hosts: localhost
  roles:
    - my_role
```
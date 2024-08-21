---
- name: Configurar un tenant en Cisco ACI
  hosts: localhost
  connection: local
  gather_facts: no
  tasks:
    - name: Crear un tenant en Cisco ACI
      cisco.aci.aci_tenant:
        host: "{{ inventory_hostname }}"
        username: "{{ username }}"
        password: "{{ password }}"
        validate_certs: no
        tenant: "{{ tenant_name }}"
        description: "{{ tenant_description }}"
        state: present
      delegate_to: localhost

# Variables (pueden definirse en un archivo de inventario o group_vars/host_vars)
vars:
  username: admin
  password: Cisco123
  tenant_name: Example_Tenant
  tenant_description: Tenant configurado para ejemplo con Ansible

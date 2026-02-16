# ACI Ansible Playbooks

Automation of Cisco ACI using Ansible for declarative Tenant lifecycle management.

This repository provides simple playbooks to create and remove ACI Tenants and is intended to be used in automation platforms such as AWX / Ansible Automation Platform or CI/CD pipelines.

---

## 📁 Repository Structure

```
aci_playbooks/
│
├── create_tenant.yml     # Creates a Tenant in ACI
├── delete_tenant.yml     # Deletes a Tenant in ACI
├── requirements.yml      # Ansible collections required
├── ansible.cfg           # Ansible configuration
└── README.md
```

---

## ⚙️ Requirements

* Python 3.8+
* Ansible 2.13+
* Access to Cisco APIC
* ACI user account with appropriate permissions

---

## 🔄 AWX / AAP Integration

Typical workflow:

```
Survey → Variables → Playbook → APIC API → Desired State
```

Recommended:

* Localhost inventory
* Credentials stored securely in the platform
* Variables provided through survey or external system

---

## 📡 Use Cases

* Automated lab provisioning
* Tenant onboarding
* Tenant decommissioning
* Network as Code workflows
* Integration with service portals

---

## 📘 Notes

The playbooks are designed to safely manage Tenant presence in ACI and can be repeatedly executed within automation workflows without affecting unrelated configurations.

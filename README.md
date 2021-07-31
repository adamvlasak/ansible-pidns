# ansible-pidns

This is ansible playbook you can use to setup dnscrypt-proxy as your LAN DNS caching server.

## Features:

- dns rebind attack protection
- blocks ads, tracking, phishing, malware and other annoying domains
- caches DNS queries for faster connections

## Installation

> supports only Alpine Linux

Make sure you can access your server via SSH and have your user in sudoers. Also please use ssh-agent so that ansible can communicate without your key passphrase.

Also make sure you have python3 installed.

Create `vars.yml` file (you can copy `vars.yml.example`) and set values to your liking.

Then create `hosts` file (ansible inventory):

```
[all]
# put your ip address here, e.g.:
192.168.1.250
```

Lastly run this command:

`ansible-playbook -i hosts playbook.yml --check --diff`

> this will only test if it would be succesful

`ansible-playbook -i hosts playbook.yml --diff`

> this will setup your dnscrypt-proxy


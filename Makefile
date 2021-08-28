test:
	ansible-playbook playbook.yml --check --diff

provision:
	ansible-playbook playbook.yml --diff

blocked-names:
	ansible-playbook playbook.yml --diff --tags=blocked-names

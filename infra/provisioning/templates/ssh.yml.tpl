- hosts: localhost
  become: yes
  vars:
    users:
      Amazon:
        name: ec2-user
      Ubuntu:
        name: ubuntu
  tasks:
  - name: Add additional ssh keys
    authorized_key:
      user: "{{ users[ansible_facts['distribution']]['name'] }}"
      state: present
      key: '{{ item }}'
    with_items:
      %{ for key in moar_keys ~}
      - "${key}"
      %{ endfor ~}

- hosts: localhost
  roles:
    - { role: datadog.datadog, become: yes }
  vars:
    datadog_api_key: "${dd_api_key}"
    datadog_config:
      log_level: INFO
      apm_config:
        enabled: true
      process_config:
        enabled: "true" # type: string
    system_probe_config:
      enabled: true

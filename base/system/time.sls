Etc/UTC:
  timezone.system:
  - utc: True

ntp:
  pkg:
  - installed
  service:
  - running
  - enable: True
  - require:
    - pkg: ntp

/etc/hosts:
  file.managed:
  - source: salt://base/system/hosts/hosts
  - template: jinja

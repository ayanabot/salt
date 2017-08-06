/etc/fwrules:
  file.managed:
  - source: salt://base/system/firewall/rules
  cmd.run:
  - name: 'sh /etc/fwrules'

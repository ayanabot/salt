sudo:
  pkg.installed

/etc/sudoers:
  file.managed:
  - source: salt://base/system/sudoers/sudoers

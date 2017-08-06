randon:
  user.present:
  - shell: /bin/bash
  - home: /home/randon
  - remove_groups: False

randon_ssh_key:
  ssh_auth.present:
  - user: randon
  - source: salt://base/user/randon/key.pub
  - config: '%h/.ssh/authorized_keys'

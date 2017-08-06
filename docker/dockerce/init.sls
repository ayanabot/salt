dockerpre:
  pkg.installed:
  - pkgs:
    - apt-transport-https
    - ca-certificates
    - curl
    - software-properties-common
  cmd.run:
  - name: 'curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -'

/etc/apt/sources.list.d/dockerce.list:
  file.managed:
  - source: salt://docker/dockerce/apt.list

docker-ce:
  pkg.installed:
  - pkgs:
    - docker-ce
  service:
  - name: 'docker'
  - running
  - enable: True
  - require:
    - pkg: docker-ce

include:
{% if pillar['role'] == 'development' %}
  - chromium.apt
  - dropbox.apt
  - medibuntu.apt
{% endif %}
  - saltstack.apt
  - rentalita.apt

/etc/apt/sources.list.d/quantal.list:
  file:
    - managed
    - source: salt://apt/quantal.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - countrycode: {{ pillar['countrycode'] }}

/etc/apt/preferences.d/99local:
  file:
    - managed
    - source: salt://apt/preferences.conf
    - user: root
    - group: root
    - mode: 644

/etc/apt/apt.conf.d/99local:
  file:
    - managed
    - source: salt://apt/apt.conf
    - user: root
    - group: root
    - mode: 644

/etc/apt/sources.list:
  file:
    - managed
    - source: salt://apt/sources.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - countrycode: {{ pillar['countrycode'] }}

/etc/apt/sources.list.d:
  file:
    - directory
    - clean: True
    - require:
{% if pillar['role'] == 'development' %}
      - file: /etc/apt/sources.list.d/chromium.list
      - file: /etc/apt/sources.list.d/google-talkplugin.list
      - file: /etc/apt/sources.list.d/dropbox.list
      - file: /etc/apt/sources.list.d/medibuntu.list
{% endif %}
      - file: /etc/apt/sources.list.d/quantal.list
      - file: /etc/apt/sources.list.d/saltstack.list
      - file: /etc/apt/sources.list.d/rentalita.list

apt-update:
  cmd:
    - run
    - name: apt-get update
    - require:
      - file: /etc/apt/preferences.d/99local
      - file: /etc/apt/apt.conf.d/99local
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d

apt-upgrade:
  cmd:
    - run
    - name: apt-get --assume-yes dist-upgrade
    - require:
      - cmd: apt-update

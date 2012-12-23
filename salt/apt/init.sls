include:
{% if pillar['role'] == 'development' %}
  - chromium.apt
  - medibuntu.apt
  - nodejs.apt
  - heroku.apt
{% endif %}
  - emacs.apt
  - nginx.apt
  - saltstack.apt
  - rentalita.apt

{% if pillar['codename'] != 'quantal' %}
/etc/apt/sources.list.d/quantal.list:
  file:
    - managed
    - source: salt://apt/quantal.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - countrycode: {{ pillar['countrycode'] }}
{% endif %}

/etc/apt/preferences.d/99local:
  file:
    - managed
    - source: salt://apt/apt.preferences
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - codename: {{ pillar['codename'] }}

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
    - codename: {{ pillar['codename'] }}

/etc/apt/sources.list.d:
  file:
    - directory
    - clean: True
    - require:
{% if pillar['role'] == 'development' %}
      - file: /etc/apt/sources.list.d/google-talkplugin.list
      - file: /etc/apt/sources.list.d/medibuntu.list
      - file: /etc/apt/sources.list.d/nodejs.list
      - file: /etc/apt/sources.list.d/heroku.list
{% endif %}
{% if pillar['codename'] != 'quantal' %}
      - file: /etc/apt/sources.list.d/quantal.list
{% endif %}
      - file: /etc/apt/sources.list.d/saltstack.list
      - file: /etc/apt/sources.list.d/rentalita.list

apt-update:
  cmd:
    - run
    - name: apt-get update
    - require:
      - file: /etc/apt/preferences.d/99local
      - file: /etc/apt/preferences.d/99emacs
      - file: /etc/apt/preferences.d/99nginx
      - file: /etc/apt/apt.conf.d/99local
      - file: /etc/apt/sources.list
      - file: /etc/apt/sources.list.d

apt-upgrade:
  cmd:
    - run
    - name: apt-get --assume-yes dist-upgrade
    - require:
      - cmd: apt-update

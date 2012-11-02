/etc/lightdm/lightdm.conf:
  file:
    - managed
    - source: salt://lightdm/lightdm.conf
    - user: root
    - group: root
    - mode: 644

/etc/apt/preferences.d/99nginx:
  file:
    - managed
    - source: salt://nginx/apt.preferences
    - user: root
    - group: root
    - mode: 644

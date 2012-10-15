/etc/apt/preferences.d/99emacs:
  file:
    - managed
    - source: salt://emacs/apt.preferences
    - user: root
    - group: root
    - mode: 644

include:
  - heroku.apt

heroku:
  pkg:
    - latest
    - names:
      - heroku-toolbelt
    - require:
      - cmd: apt-update

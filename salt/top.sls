base:
  '*':
    - ssh
  'role:production':
    - match: pillar
    - sudo
    - users.production
    - default
    - rentalita
  'role:development':
    - match: pillar
    - sudo
    - users.development
    - default.dev
    - rentalita.dev
  'role:experimental':
    - match: pillar
    - users.experimental
    - default
    - gitolite
    - gitweb.nginx

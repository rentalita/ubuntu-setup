base:
  '*':
    - ssh
    - sudo
  'role:production':
    - match: pillar
    - users.production
    - default
    - rentalita
  'role:development':
    - match: pillar
    - users.development
    - default.dev
    - rentalita.dev
  'role:experimental':
    - match: pillar
    - users.experimental
    - default
    - gitolite
    - gitweb.nginx

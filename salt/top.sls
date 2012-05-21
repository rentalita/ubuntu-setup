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

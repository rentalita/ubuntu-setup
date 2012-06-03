base:
  '*':
    - ssh
  'role:development':
    - match: pillar
    - sudo
    - users.development
    - rentalita.dev
    - otbdto.dev
  'role:production':
    - match: pillar
    - sudo
    - users.production
    - rentalita
  'role:experimental':
    - match: pillar
    - users.experimental
    - otbdto

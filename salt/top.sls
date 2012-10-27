base:
  '*':
    - ssh
  'role:development':
    - match: pillar
    - sudo
    - users.development
    - rentalita.dev
    - otbdto.dev
  'role:rentalita':
    - match: pillar
    - sudo
    - users.rentalita
    - rentalita
  'role:otbdto':
    - match: pillar
    - users.otbdto
    - otbdto
  'role:flw':
    - match: pillar
    - users.flw
    - flw

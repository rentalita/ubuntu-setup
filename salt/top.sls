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
    - server
    - rentalita
  'role:otbdto':
    - match: pillar
    - users.otbdto
    - server
    - otbdto
  'role:flw':
    - match: pillar
    - users.flw
    - server
    - flw

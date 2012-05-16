base:
  '*':
    - ssh
    - users
  'role:production':
    - match: grain
    - default
    - rentalita
  'role:development':
    - match: grain
    - default.dev
    - rentalita.dev

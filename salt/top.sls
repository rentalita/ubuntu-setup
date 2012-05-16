base:
  '*':
    - ssh
  'role:production':
    - match: grain
    - users.production
    - default
    - rentalita
  'role:development':
    - match: grain
    - users.development
    - default.dev
    - rentalita.dev

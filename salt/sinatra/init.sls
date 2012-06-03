include:
  - ruby

sinatra:
  pkg:
    - latest
    - names:
      - ruby-bundler
      - ruby-sinatra
    - requires:
      - pkg: ruby

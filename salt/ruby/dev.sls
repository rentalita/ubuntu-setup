include:
  - ruby

ruby-dev:
  pkg:
    - latest
    - names:
      # - ruby1.9.1-doc
      - bundler
      - rake
    - require:
      - pkg: ruby

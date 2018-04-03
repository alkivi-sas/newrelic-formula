include:
  - .repo

newrelic-daemon:
  service.running:
    - full_restart: True
    - require:
      - pkgrepo: newrelic-repo

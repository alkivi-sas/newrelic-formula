{% from "newrelic/map.jinja" import newrelic with context %}

include:
  - .repo

newrelic-php-debconf:
  debconf.set:
    - name: newrelic-php5
    - data:
        'newrelic-php5/application-name': {'type': 'string', 'value': {{ newrelic.application_name }}}
        'newrelic-php5/license-key': {'type': 'string', 'value': {{ newrelic.license_key }}}
    - prereq:
      - pkg: newrelic-php

newrelic-php:
  pkg.installed:
    - name: newrelic-php5
    - require:
      - pkgrepo: newrelic-repo


project_dir := justfile_directory()

export PYTHONPATH := project_dir

@help:
  just --list

@test:
  pytest --capture=no tests/

@format:
  black {{ project_dir }}

@check:
  mypy {{ project_dir }}/foobar/

@cli:
  ipython

run *params:
  #!/usr/bin/env python3
  import sys
  sys.path.append("{{ project_dir }}")
  from foobar.cli import foobar
  params = "{{ params }}".split()
  foobar(params)


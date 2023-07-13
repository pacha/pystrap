import click

from .version import version


@click.group(context_settings={"show_default": True})
def foobar():
    pass


foobar.add_command(version)  # type: ignore

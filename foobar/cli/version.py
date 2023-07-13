import click

from foobar import __version__


@click.command()
def version():
    """Display version."""
    print(f"App version {__version__}")

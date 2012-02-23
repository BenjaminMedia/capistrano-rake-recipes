# Capistrano rake recipes

In essence this set of recipes simply allow you to run command from your local box to execute commands on the remote server(s).

## Usage

To use it simply run this command, to execute a `db:migrate`:

    bundle exec cap rake:migrate
# dry-rb workshop Postgres connection test

Verify your connection to Postgres before a dry-rb workshop.

This will make it easier to get up and running with the app we build in the workshop.

## Instructions

1. Create a Postgres database called `dry_rb_workshop_connection_test`. You can usually do this by running `createdb dry_rb_workshop_connection_test` on the command line.
2. Bundle this project: `bundle`
3. Run the connection check script: `bundle exec connection_test.rb`

If the script prints "Postgres connection confirmed", then your database connection is fine and you should have no problems connection the workshop app to your databae.

If the script fails for any reason, you may need to adjust either your Postgres setup, or the database connection URL (e.g. you may want to update `DATABASE_URL` in `connection_test.rb` to provide a username/password, if you've configured your Postgres installation to require authentication). Please continue to adjust things until the script can successfully connect.

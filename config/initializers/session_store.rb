# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railstest_session',
  :secret      => '0a3ec36f06d01548acec01c3f9df83ed3829eb2c8d8c063a9745dc9cffd636920dfca80d9df36bf40842216e7326d6b8737e76a82ee919d8509edf29ff77d705'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

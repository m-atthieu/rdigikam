# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rdk_session',
  :secret      => '1717720d102152033ce9c6f31a65a3c81e93a95f05f292b2dd6e1e7d5a6fc1de0436d0bfe44fae550d6cb89b9531bb1844177f010d246b2c5ca9311ef73d5484'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Overland_session',
  :secret      => '13cca60d90a5c78a0edaa9f655bec9c3a9cf1ffd6c9c65968c9262a6635f70377e7ee24610c397782258e845271c7a295b34aed238b7fa19b21934913608758d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

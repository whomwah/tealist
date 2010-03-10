# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tealist_session',
  :secret      => 'a6af0776cc1b928d574e0662f209e41deb3618f6b3ce7f4a3be2a24cdc31649e80f5693b4cd7e2dc91fbc7fcb1c970052f0d5676ca919d8263d8ca74d78b61e1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tipptop_session',
  :secret      => '08a6e642cfb688361f45845df40523e174ee129b55d35df204b5179f44e92adc9ae1f3a1a1102d6e964c43d04477ce53bba43f65dfcd8b153188efb481c76028'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

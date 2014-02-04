# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Synapse::Application.config.secret_key_base = 'e12ef07cb1d8dafc8b9d11f20dae4be193fbd64f49b886fdecb2f1ddf36a31a884d52d36bcda356396933f91a0a04c86e91d800514e23218bb076f87981b1954'

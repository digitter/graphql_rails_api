Rails.application.config.api_only = false

Rails.application.config.session_store(
  :cookie_store,
  key: 'graphql_rails_api',
  same_site: :strict
)

if Rails.env == "production"
  # the key is the name of the session cookie
  # TODO prod configuration
  Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "something_something-app-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end

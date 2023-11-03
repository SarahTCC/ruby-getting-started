# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'  # Set this to the specific origins you want to allow or '*' to allow all origins
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete], allow_other_host: true
  end
end

# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY"],                        # required
<<<<<<< HEAD
    :aws_secret_access_key  => ENV["AWS_SECRET_KEY"]                         # required
    :region                 => 'us-west-1'
=======
    :aws_secret_access_key  => ENV["AWS_SECRET_KEY"],   
    :region                 => 'us-west-1'                      # required
>>>>>>> b3423efe6575697047e3367380be71d9d2534940
  }
  config.fog_directory  = ENV["AWS_BUCKET"]                     # required
end



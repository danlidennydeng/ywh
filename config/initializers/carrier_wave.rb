if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',

     # :aws_access_key_id     => ENV['S3_ACCESS_KEY'],

      :aws_access_key_id     => 'AKIAJCWQTSX6HPK4MSOA',

      
      #:aws_secret_access_key => ENV['S3_SECRET_KEY']

      :aws_secret_access_key => 'fWIMAi1Sr3F2B6vV8hIgJuG2d/Kn0I/2Af9+8tEY'
    }
    #config.fog_directory     =  ENV['S3_BUCKET']
    config.fog_directory     =  'macbook20161104'
  end
end

#:region     => 'Seoul' did not work.

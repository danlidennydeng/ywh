if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJOWASAH5VHQY4AQA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['ywh1234']
  end
end

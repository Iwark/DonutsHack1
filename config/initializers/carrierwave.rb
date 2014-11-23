CarrierWave.configure do |config|

  if Rails.env.production? || Rails.env.staging?
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => Rails.application.secrets.aws_s3_key,
      :aws_secret_access_key  => Rails.application.secrets.aws_s3_secret,
      :region => 'ap-northeast-1'
    }
    config.fog_directory = 'donuts-hack1'
  end

end
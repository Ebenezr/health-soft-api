Cloudinary.config do |config| 
    config.cloud_name = ENV['cloud_name'] 
    config.api_key = ENV['cloud_api_key'] 
    config.api_secret = ENV['cloud_api_secret'] 
    config.secure = true config.cdn_subdomain = true
end
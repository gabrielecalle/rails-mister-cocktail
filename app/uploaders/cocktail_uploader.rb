# encoding: utf-8

class CocktailUploader < CarrierWave::Uploader::Base

 include Cloudinary::CarrierWave
end

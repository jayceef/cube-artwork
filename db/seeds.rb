require 'image_suckr'

suckr = ImageSuckr::GoogleSuckr.new

10.times do
  Post.create(
    photo_url: suckr.get_image_url,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end

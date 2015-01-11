require 'image_suckr'

suckr = ImageSuckr::GoogleSuckr.new

10.times do
  post = Post.create(
    photo_url: suckr.get_image_url,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )

  (1..10).to_a.sample.times do
    post.comments.create(
      username: Faker::Internet.user_name,
      body: Faker::Lorem.paragraph
    )
  end
end



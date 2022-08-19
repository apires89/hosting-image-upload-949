require "open-uri"

file = URI.open("https://res.cloudinary.com/dw5npgaqk/image/upload/v1636708213/development/q92br8j0i45btp3mijr2ns66iiq3.png")
article = Article.new(title: "MVC", body: "Object oriented framework")
article.photo.attach(io: file, filename: "mvc.png", content_type: "image/png")
article.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cryptid.destroy_all

cryptids = [
{name: "Bigfoot", country: "United States", lore: 'most cultures have accounts of human-like giants in their folk history, expressing a need for some larger-than-life creature, a third of Bigfoot claims have been along the Pacific Northwest', characteristics: "large, muscular, bipedal ape-like creature, roughly 6–9 feet (1.8–2.7 m) tall, covered in hair described as black, dark brown, or dark reddish", img_url: "https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTU3ODc4NjAxOTExNzA2OTUz/bigfoot-517258962.jpg"}, 
{name: "Mothman" , characteristics: "Humanoid, Seven to Ten foot wings, red glowing eyes", country: "USA", lore: 'Some believe that the Mothman tries to warn people about disasters about to happen, Such as the disasters at Freiburg, Chernobyl, New York on 9/11 and multiple sightings before the Minnesota bridge collapse' , img_url: "https://townsquare.media/site/904/files/2019/01/GettyImages-1084575560.jpg?w=980&q=75"}
]

cryptids.each do |cryptid|
    Cryptid.create(cryptid)
  end 
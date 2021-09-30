# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
NAMES = ["Rose","Tulip","Pansy","Lily","Lavender","Dandelion","Daisy","Iris","Buttercup","Violet","Poppy","Camellia","Petunia","Aster","Dahlia",
    "Jasmine","Flower","Fern","Holly","Jude","Maple","Ash","Mulberry","Magnolia","Basil","Rosemary","Sage","Peppermint","Thyme","Lavender","Ivy",
    "Willow","Blueberry","Pumpkin","Kiwi","Mango","Apple","Okra","Peaches","Clementine","Cherry","Pepper","Tomato","Celery ","Cinnamon","Pepper",
    "Nutmeg","Ginger","Paprika","Hazel","Sesame","Cardamom", "Nugget","Nacho","Cookie","Lucky","Oreo","Snickers","Sugar","Twix","Cocoa","Gelato",
    "Soda Pop","Fluffy","Padfoot","Sirius","Dobby","Norbert","Pixie","Black","Hermione","Dumbledore","Fleur","Luna","Weasley","Malfoy","Ginny",
    "Hedwig"]

NAMES.each do |name|
    Kitten.create({
        :name=>name, 
        :age=>rand(1..20),
        :cuteness=>rand(0..10),
        :softness=>rand(0..10)
    })
end
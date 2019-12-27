# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Recipe.destroy_all
puts "Seeding database..."
user_one = User.create(email: "d@gmail.com", password: "123456")
attributes = [
  {
    title: 'Bisteeya',
    photo_url: 'https://assets.marthastewart.com/styles/wmax-750/d20/bisteeya-057-d111661/bisteeya-057-d111661_horiz.jpg?itok=KvuaTX4S',
    time: 180,
    difficulty: 'Medium',
    rating: 4,
    servings: 12,
    category: 'Meat',
    notes: "Step1: Place chicken in a large bowl along with garlic, salt, pepper,
    ginger, saffron, turmeric, and cinnamon sticks; set aside.
    Step 2: Heat a large dutch oven over medium-high heat. Melt 2 tablespoons
    butter and saute onion. Add chicken mixture and enough water to cover chicken.
    Bring to a boil. Reduce heat, cover, and simmer for 1 1/4 hours.
    Step 3: Heat olive oil in a heavy-bottomed saute pan. Add almonds and cook,
    stirring until browned. Remove from heat and let cool. Add confectioners'
    sugar and ground cinnamon; stir to combine. Set aside.
    Step 4: Remove chicken and all bones from stock. Add lemon juice. Beat eggs
    and whisk into stock. Cook until thick and dry. Fold in parsley and cilantro;
    set aside.
    Step 5: Remove and discard bones and skin from chicken, reserving meat. Shred
    with your fingers into small pieces (not larger than 1 inch, and preferably in
    shreds rather than chunks). Transfer to a medium bowl; stir in preserved
    lemons and set aside.
    Step 6: Preheat oven to 350 degrees.
    Step 7: Brush a 10-by-2-inch round cake pan with clarified butter. Working
    with 1 sheet of phyllo at a time, place in cake pan, leaving edges to overhang
    pan. Brush with clarified butter before adding the next sheet in an
    overlapping circular pattern. Repeat process using 6 to 8 sheets of phyllo and
    clarified butter to cover bottom of pan.
    Step 8: Top evenly with half of shredded chicken mixture. Cover chicken
    with half of almond mixture. Top this with half of egg mixture, then
    repeat layering process with remaining ingredients. Then take overhanging
    phyllo and fold toward center of pan.
    Step 9: With another 6 to 8 sheets of phyllo and clarified butter, repeat
    overlapping circular pattern. Using
    scissors, trim a little excess phyllo. Tuck overhanging edges under the
    pie. Brush phyllo with clarified butter. Chill at least 30 minutes.
    Step 10: Using a sharp knife, score phyllo in a diamond pattern. Bake until
    golden brown, about 45 minutes. If pie is not golden brown, increase oven
    temperature to 375 degrees and bake an additional 5 to 10 minutes.
    Step 11: Remove from oven and dust with confectioners' sugar and, using your
    fingers, sprinkle with ground cinnamon in a decorative pattern. Slice
    and serve.",
    user: user_one
  },
  {
    title: 'Bacalhau à Brás',
    photo_url: 'http://www.ingredientes.pt/wp-content/uploads/2015/10/bacalhau-a-braz.jpg',
    time: 40,
    difficulty: 'Easy',
    rating: 4,
    servings: 4,
    category: 'Fish',
    notes: 'Step 1: Demolhe o bacalhau de um dia para o outro.
    Step 2: Descasque e lave as cebolas e corte-as as cebolas em meias luas
    finas.
    Step 3: Descasque e lave os dentes de alho. pique-os finamente.
    Step 4: Bata os ovos com o leite.
    Step 5: Num tacho aqueça o azeite. junte as cebolas e os dentes de alho.
    Step 6: Deixe refogar até que fique douradinho.
    Step 7: Junte depois o bacalhau e deixe cozinhar mais um pouco até que fique
    com o aspecto de cozinhado.
    Step 8: Junte depois as batatas, envolva e regue com os ovos.
    Step 9: Deixe cozinhar, mexendo sempre.
    Step 10: Retire do lume e rectifique os temperos.
    Step 11: Polvilhe com salsa picada e as azeitonas.
    Step 12: Decore a gosto e sirva.',
    user: user_one
  },
  {
    title: 'Jamaican Festival',
    photo_url: 'https://tse4.mm.bing.net/th?id=OIP.7H61Qu15sn2bIHNXudeBVAHaE8&pid=Api',
    time: 20,
    difficulty: 'Easy',
    rating: 4,
    servings: 4,
    category: 'Side Dish',
    notes: 'Step 1: Take a large mixing bowl and combine the all-purpose flour
    with the cornmeal.
    Step 2: Add some sugar along with baking powder and salt. Mix well to
    combine.
    Step 3: Beat an egg in this mixture and add vanilla to it. Mix them well
    together.
    Step 4: Pour in some water and knead dough till it becomes smooth, while
    adding small amounts of water as necessary.
    Step 5: Divide the dough in 6 equal sized pieces and prepare dumplings out
    of it shaping them lengthwise.
    Step 6: Place a pan over medium flame and heat some oil in it, sufficient
    enough to deep-fry the dumplings.
    Step 7: Once the oil becomes hot enough, put the dumplings in the pan, one
    after the other, and let them fry over reduced heat.
    Step 8: Keep stirring them occasionally to ensure they are cooked from all
    the sides and have turned brown enough. It is ok for them to expand a bit
    while they are being cooked.
    Step 9: Serve them hot with a side of your choice.',
    user: user_one
  }
]

attributes.each do |attr|
  Recipe.create(attr)
end

puts "Seeds added! :D"

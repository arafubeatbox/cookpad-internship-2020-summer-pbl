# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
  User.create_or_find_by(name: "User#{i}", password: 'password', password_confirmation: 'password', email: "user#{i}@gmail.com")
end

user1 = User.find_by(name: 'User1')

onion = Ingredient.find_or_create_by(name: '玉ねぎ', kcal: 39, fat: 0.1, protein: 1.1, carbohydrate: 9)
raddish = Ingredient.find_or_create_by(name: '大根', kcal: 18, fat: 0.1, protein: 0.6, carbohydrate: 4.1)
brocoli_sprout = Ingredient.find_or_create_by(name: 'ブロッコリースプラウト', kcal: 19, fat: 0.6, protein: 1.9, carbohydrate: 2.6)
soy_sauce = Ingredient.find_or_create_by(name: '醤油', kcal: 53, fat: 0.6, protein: 8, carbohydrate: 4.9)
vinigar = Ingredient.find_or_create_by(name: '酢', kcal: 18, fat: 0, protein: 8, carbohydrate: 0)
honey = Ingredient.find_or_create_by(name: 'はちみつ', kcal: 304, fat: 0, protein: 0.3, carbohydrate: 82)
dried_bonito = Ingredient.find_or_create_by(name: '鰹節', kcal: 356, fat: 2.9, protein: 77.1, carbohydrate: 0.8)

onion_raddish_salad = Recipe.find_or_create_by(name: '新玉ねぎと大根のサラダ', description: '旬の新玉ねぎと大根を合わせてさっぱりサラダにしました', user_id: User.find_by(name: 'User1').id, image_url: 'https://img.cpcdn.com/recipes/4461647/840x1461s/1fa9455281ed6bf7e3dbc47896d93f45?u=533232&p=1491703927')

RecipeIngredient.find_or_create_by(recipe_id: onion_raddish_salad.id, ingredient_id: onion.id, ingredient_amount: 113.3)
RecipeIngredient.find_or_create_by(recipe_id: onion_raddish_salad.id, ingredient_id: raddish.id, ingredient_amount: 50)
RecipeIngredient.find_or_create_by(recipe_id: onion_raddish_salad.id, ingredient_id: brocoli_sprout.id, ingredient_amount: 10)
RecipeIngredient.find_or_create_by(recipe_id: onion_raddish_salad.id, ingredient_id: soy_sauce.id, ingredient_amount: 15)
RecipeIngredient.find_or_create_by(recipe_id: onion_raddish_salad.id, ingredient_id: vinigar.id, ingredient_amount: 15)
RecipeIngredient.find_or_create_by(recipe_id: onion_raddish_salad.id, ingredient_id: honey.id, ingredient_amount: 1.25)
RecipeIngredient.find_or_create_by(recipe_id: onion_raddish_salad.id, ingredient_id: dried_bonito.id, ingredient_amount: 15)

cabbage = Ingredient.find_or_create_by(name: 'キャベツ', kcal: 24, fat: 0.1, protein: 1.3, carbohydrate: 6)
bacon = Ingredient.find_or_create_by(name: 'ベーコン', kcal: 540, fat: 42, protein: 37, carbohydrate: 1.4)
olive_oil = Ingredient.find_or_create_by(name: 'オリーブオイル', kcal: 884, fat: 100, protein: 0, carbohydrate: 0)
tomato_juice = Ingredient.find_or_create_by(name: 'トマトジュース', kcal: 17, fat: 0.1, protein: 0.8, carbohydrate: 4.2)
consomme = Ingredient.find_or_create_by(name: 'コンソメ', kcal: 12, fat: 0, protein: 2.2, carbohydrate: 0.7)
sugar = Ingredient.find_or_create_by(name: '砂糖', kcal: 386, fat: 0, protein: 0, carbohydrate: 100)

tomato_soup = Recipe.find_or_create_by(
  name: 'トマトスープ',
  description: '簡単にできる！
  トマトジュースで作る
  リコピンたっぷりスープ♪',
  user_id: User.find_by(name: 'User2').id,
  image_url: 'https://img.cpcdn.com/recipes/4073285/840x1461s/eda665204c4b919caf5a4fd4439ae4ae?u=1843442&p=1486695496'
)

RecipeIngredient.find_or_create_by(recipe_id: tomato_soup.id, ingredient_id: cabbage.id, ingredient_amount: 150)
RecipeIngredient.find_or_create_by(recipe_id: tomato_soup.id, ingredient_id: bacon.id, ingredient_amount: 40)
RecipeIngredient.find_or_create_by(recipe_id: tomato_soup.id, ingredient_id: olive_oil.id, ingredient_amount: 15)
RecipeIngredient.find_or_create_by(recipe_id: tomato_soup.id, ingredient_id: tomato_juice.id, ingredient_amount: 200)
RecipeIngredient.find_or_create_by(recipe_id: tomato_soup.id, ingredient_id: consomme.id, ingredient_amount: 7.5)
RecipeIngredient.find_or_create_by(recipe_id: tomato_soup.id, ingredient_id: sugar.id, ingredient_amount: 15)
RecipeIngredient.find_or_create_by(recipe_id: tomato_soup.id, ingredient_id: soy_sauce.id, ingredient_amount: 7.5)

umeboshi = Ingredient.find_or_create_by(name: '梅干し', kcal: 33, fat: 0.2, protein: 0.9, carbohydrate: 10.5)
# 一人前 7g
hijiki = Ingredient.find_or_create_by(name: 'ひじき', kcal: 14.3, fat: 1.4, protein: 10, carbohydrate: 55.7)
# 一切れ 30g
fried_tofu = Ingredient.find_or_create_by(name: '油揚げ', kcal: 386, fat: 33.1, protein: 18.6, carbohydrate: 2.63)
mirin = Ingredient.find_or_create_by(name: 'みりん', kcal: 241, fat: 0, protein: 0.3, carbohydrate: 43.2)
# 米１合 195 g ご飯中盛り 0.4合
rice = Ingredient.find_or_create_by(name: '米', kcal: 110.8, fat: 0.2, protein: 2.2, carbohydrate: 23.1)
sake = Ingredient.find_or_create_by(name: '日本酒', kcal: 134, fat: 0, protein: 0.4, carbohydrate: 5.15)

ume_rice = Recipe.find_or_create_by(name: '梅ひじきの炊き込みご飯', description: 'かつお出汁と合わさって梅がまろやかになります。いくらでも食べられる美味しさです。', user_id: User.find_by(name: 'User3').id, image_url: 'https://img.cpcdn.com/recipes/3247674/840x1461s/b31e3f60eb25b8a91898db95316bfa63?u=4036&p=1434714042')

RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: umeboshi.id, ingredient_amount: 4)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: hijiki.id, ingredient_amount: 6)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: fried_tofu.id, ingredient_amount: 6)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: rice.id, ingredient_amount: 78)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: soy_sauce.id, ingredient_amount: 3)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: mirin.id, ingredient_amount: 3)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: sake.id, ingredient_amount: 3)

chicken_breast = Ingredient.find_or_create_by(name: '鶏むね肉', kcal: 240, fat: 13.6, protein: 27.1, carbohydrate: 0)
ginger = Ingredient.find_or_create_by(name: '生姜', kcal: 81.8, fat: 0.9, protein: 1.8, carbohydrate: 18.2)
potato_starch = Ingredient.find_or_create_by(name: '片栗粉', kcal: 356.9, fat: 0.31, protein: 6.9, carbohydrate: 83.1)
egg = Ingredient.find_or_create_by(name: '卵', kcal: 156, fat: 10, protein: 12, carbohydrate: 1.2)
mayonnaise = Ingredient.find_or_create_by(name: 'マヨネーズ', kcal: 681.2, fat: 72.5, protein: 0.72, carbohydrate: 0.72)

chicken_nanban = Recipe.find_or_create_by(name: '簡単！チキン南蛮', description: '時間がなくてもパパッと作れる！チキン南蛮！', user_id: User.find_by(name: 'User4').id, image_url: 'https://img.cpcdn.com/recipes/5597658/840x1461s/7bd2b36acb8347de21444a1090797bcb?u=2145065&p=1575803832')

RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: soy_sauce.id, ingredient_amount: 12.5)
RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: sake.id, ingredient_amount: 1.3)
RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: ginger.id, ingredient_amount: 1.3)
RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: sugar.id, ingredient_amount: 16.3)
RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: vinigar.id, ingredient_amount: 7.5)
RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: potato_starch.id, ingredient_amount: 3.8)
RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: egg.id, ingredient_amount: 6.3)
RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: onion.id, ingredient_amount: 1.7)
RecipeIngredient.find_or_create_by(recipe_id: chicken_nanban.id, ingredient_id: mayonnaise.id, ingredient_amount: 22.5)

green_pepper = Ingredient.find_or_create_by(name: 'ピーマン', kcal: 20, fat: 0.2, protein: 0.9, carbohydrate: 4.6)
sausage = Ingredient.find_or_create_by(name: 'ソーセージ', kcal: 301, fat: 27, protein: 12, carbohydrate: 2)
miso = Ingredient.find_or_create_by(name: '味噌', kcal: 199, fat: 6, protein: 12, carbohydrate: 26)

nikumiso_green_pepper = Recipe.find_or_create_by(name: 'こってり肉味噌ピーマン', description: 'ピーマンが苦手な人でも美味しく食べられます♪ピーマン消費にも☆', user_id: User.find_by(name: 'User4').id, image_url: 'https://img.cpcdn.com/recipes/1974521/840x1461s/2e113d17813e0c3709892d6bfa704ab1?u=4174257&p=1348913580')

RecipeIngredient.find_or_create_by(recipe_id: nikumiso_green_pepper.id, ingredient_id: green_pepper.id, ingredient_amount: 38)
RecipeIngredient.find_or_create_by(recipe_id: nikumiso_green_pepper.id, ingredient_id: sausage.id, ingredient_amount: 22)
RecipeIngredient.find_or_create_by(recipe_id: nikumiso_green_pepper.id, ingredient_id: miso.id, ingredient_amount: 2.5)
RecipeIngredient.find_or_create_by(recipe_id: nikumiso_green_pepper.id, ingredient_id: sugar.id, ingredient_amount: 3)

pork_belly = Ingredient.find_or_create_by(name: '豚バラ', kcal: 518, fat: 53, protein: 9, carbohydrate: 0)

green_pepper_nikumaki = Recipe.find_or_create_by(name: 'ピーマンの肉巻き', description: '下茹でも粉付けもなしでとっても簡単。ピーマンが苦手な人もおいしくいただけるレシピです。', user_id: User.find_by(name: 'User4').id, image_url: 'https://img.cpcdn.com/recipes/4088334/840x1461s/3f302dec8ebd349c21e4d6e06cb2c045?u=10634079&p=1474945517')

RecipeIngredient.find_or_create_by(recipe_id: green_pepper_nikumaki.id, ingredient_id: pork_belly.id, ingredient_amount: 50)
RecipeIngredient.find_or_create_by(recipe_id: green_pepper_nikumaki.id, ingredient_id: green_pepper.id, ingredient_amount: 48)
RecipeIngredient.find_or_create_by(recipe_id: green_pepper_nikumaki.id, ingredient_id: sugar.id, ingredient_amount: 3.8)
RecipeIngredient.find_or_create_by(recipe_id: green_pepper_nikumaki.id, ingredient_id: soy_sauce.id, ingredient_amount: 3.8)
RecipeIngredient.find_or_create_by(recipe_id: green_pepper_nikumaki.id, ingredient_id: mirin.id, ingredient_amount: 3.8)

shitake = Ingredient.find_or_create_by(name: '椎茸', kcal: 34, fat: 0.5, protein: 2.2, carbohydrate: 7)

pork_belly_green_pepper = Recipe.find_or_create_by(
  name: '椎茸ピーマン豚バラの甘辛炒め',
  description: 'フライパン一つで、簡単&早い。豚バラの旨味でご飯がススム一品です。お弁当にも。',
  user_id: User.find_by(name: 'User4').id,
  image_url: 'https://img.cpcdn.com/recipes/2395372/840x1461s/ca5b5d0b9ab131dfa95864e5c2c16310?u=5132238&p=1383554301'
)

RecipeIngredient.find_or_create_by(recipe_id: pork_belly_green_pepper.id, ingredient_id: pork_belly.id, ingredient_amount: 50)
RecipeIngredient.find_or_create_by(recipe_id: pork_belly_green_pepper.id, ingredient_id: shitake.id, ingredient_amount: 14.3)
RecipeIngredient.find_or_create_by(recipe_id: pork_belly_green_pepper.id, ingredient_id: green_pepper.id, ingredient_amount: 38)
RecipeIngredient.find_or_create_by(recipe_id: pork_belly_green_pepper.id, ingredient_id: sugar.id, ingredient_amount: 7.3)
RecipeIngredient.find_or_create_by(recipe_id: pork_belly_green_pepper.id, ingredient_id: soy_sauce.id, ingredient_amount: 11)

beef = Ingredient.find_or_create_by(name: '牛肉', kcal: 250, fat: 15, protein: 26, carbohydrate: 0)
chive = Ingredient.find_or_create_by(name: 'ニラ', kcal: 30, fat: 0.7, protein: 3.3, carbohydrate: 4.4)
cellophane_noodles = Ingredient.find_or_create_by(name: '春雨', kcal: 351, fat: 0.1, protein: 0.2, carbohydrate: 86)
oyster_sauce = Ingredient.find_or_create_by(name: 'オイスターソース', kcal: 51, fat: 0.3, protein: 1.4, carbohydrate: 11)
doubanjiang = Ingredient.find_or_create_by(name: '豆板醤', kcal: 60, fat: 11, protein: 2, carbohydrate: 7.9)
sesame_oil = Ingredient.find_or_create_by(name: 'ごま油', kcal: 884, fat: 100, protein: 0, carbohydrate: 0)

beef_cellophane = Recipe.find_or_create_by(
  name: '牛肉とニラと春雨のオイスターソース炒め',
  description: '材料は牛肉とニラと春雨だけ!春雨は下茹でなしなのでフライパンだけでボリュームのある一品ができます。',
  user_id: User.find_by(name: 'User4').id,
  image_url: 'https://img.cpcdn.com/recipes/571954/840x1461s/ef17b393279825950cefa9adf59e9d19?u=812609&p=1378371661'
)

RecipeIngredient.find_or_create_by(recipe_id: beef_cellophane.id, ingredient_id: beef.id, ingredient_amount: 50)
RecipeIngredient.find_or_create_by(recipe_id: beef_cellophane.id, ingredient_id: chive.id, ingredient_amount: 4.9)
RecipeIngredient.find_or_create_by(recipe_id: beef_cellophane.id, ingredient_id: cellophane_noodles.id, ingredient_amount: 25)
RecipeIngredient.find_or_create_by(recipe_id: beef_cellophane.id, ingredient_id: soy_sauce.id, ingredient_amount: 5)
RecipeIngredient.find_or_create_by(recipe_id: beef_cellophane.id, ingredient_id: oyster_sauce.id, ingredient_amount: 5)
RecipeIngredient.find_or_create_by(recipe_id: beef_cellophane.id, ingredient_id: sugar.id, ingredient_amount: 2.5)
RecipeIngredient.find_or_create_by(recipe_id: beef_cellophane.id, ingredient_id: doubanjiang.id, ingredient_amount: 2.5)
RecipeIngredient.find_or_create_by(recipe_id: beef_cellophane.id, ingredient_id: sesame_oil.id, ingredient_amount: 2.5)

bacon = Ingredient.find_or_create_by(name: 'ベーコン', kcal: 541, fat: 42, protein: 37, carbohydrate: 1.4)
lemon_juice = Ingredient.find_or_create_by(name: 'レモン汁', kcal: 22, fat: 0.2, protein: 0.4, carbohydrate: 7)

cabbage_bacon = Recipe.find_or_create_by(
  name: '春キャベツとベーコンのレモン醤油炒め',
  description: 'チャチャっと出来ちゃうのであと一品やお弁当の隙間おかずにもヽ(･∀･)ﾉ',
  user_id: User.find_by(name: 'User4').id,
  image_url: 'https://img.cpcdn.com/recipes/3805589/840x1461s/fc884615f75702550986e87709443a4f?u=1228553&p=1460614429'
)

RecipeIngredient.find_or_create_by(recipe_id: cabbage_bacon.id, ingredient_id: cabbage.id, ingredient_amount: 120)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_bacon.id, ingredient_id: bacon.id, ingredient_amount: 28.7)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_bacon.id, ingredient_id: soy_sauce.id, ingredient_amount: 5)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_bacon.id, ingredient_id: lemon_juice.id, ingredient_amount: 2.5)

cabbage_egg = Recipe.find_or_create_by(
  name: '簡単！キャベツと卵だけでも美味しい中華',
  description: 'キャベツを炒めて出た水分は中華だしでトロミをつけしっかり味に！ふんわり卵とごま油で香ばしく優しい味。',
  user_id: User.find_by(name: 'User4').id,
  image_url: 'https://img.cpcdn.com/recipes/2218721/840x1461s/c81221f3ff4f432c274bb471e770bd9d?u=369673&p=1427925690'
)

RecipeIngredient.find_or_create_by(recipe_id: cabbage_egg.id, ingredient_id: cabbage.id, ingredient_amount: 70.8)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_egg.id, ingredient_id: egg.id, ingredient_amount: 50)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_egg.id, ingredient_id: sake.id, ingredient_amount: 15)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_egg.id, ingredient_id: potato_starch.id, ingredient_amount: 2.5)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_egg.id, ingredient_id: sesame_oil.id, ingredient_amount: 5)

butter = Ingredient.find_or_create_by(name: 'バター', kcal: 717, fat: 81, protein: 0.9, carbohydrate: 0.1)
oil = Ingredient.find_or_create_by(name: '油', kcal: 884, fat: 100, protein: 0, carbohydrate: 0)

cabbage_chicken = Recipe.find_or_create_by(
  name: 'キャベツと鶏胸肉炒め♪レモンバターソース',
  description: 'バターのコクとレモンの酸味がとっても合いますよ！お弁当はもちろん温かいご飯にもね❤',
  user_id: User.find_by(name: 'User4').id,
  image_url: 'https://img.cpcdn.com/recipes/599910/840x1461s/2affc3e792995b02c8a623a7209674d8?u=690767&p=1331852247'
)

RecipeIngredient.find_or_create_by(recipe_id: cabbage_chicken.id, ingredient_id: chicken_breast.id, ingredient_amount: 100)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_chicken.id, ingredient_id: sake.id, ingredient_amount: 7.5)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_chicken.id, ingredient_id: cabbage.id, ingredient_amount: 107.5)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_chicken.id, ingredient_id: potato_starch.id, ingredient_amount: 7.5)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_chicken.id, ingredient_id: oil.id, ingredient_amount: 7.5)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_chicken.id, ingredient_id: lemon_juice.id, ingredient_amount: 5)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_chicken.id, ingredient_id: soy_sauce.id, ingredient_amount: 7.5)
RecipeIngredient.find_or_create_by(recipe_id: cabbage_chicken.id, ingredient_id: butter.id, ingredient_amount: 5)

kondate_test = Kondate.find_or_create_by(name: '適当')
KondateRecipe.find_or_create_by(kondate_id: kondate_test.id, recipe_id: onion_raddish_salad.id)
KondateRecipe.find_or_create_by(kondate_id: kondate_test.id, recipe_id: tomato_soup.id)
KondateRecipe.find_or_create_by(kondate_id: kondate_test.id, recipe_id: ume_rice.id)

week_datum1 = WeekDatum.find_or_create_by(user_id: user1.id, week: '8/23 ~ 29')
day_datum1 = DayDatum.find_or_create_by(week_datum_id: week_datum1.id, date: '8/23')
day_datum2 = DayDatum.find_or_create_by(week_datum_id: week_datum1.id, date: '8/24')
day_datum3 = DayDatum.find_or_create_by(week_datum_id: week_datum1.id, date: '8/25')
day_datum4 = DayDatum.find_or_create_by(week_datum_id: week_datum1.id, date: '8/26')
day_datum5 = DayDatum.find_or_create_by(week_datum_id: week_datum1.id, date: '8/27')
day_datum6 = DayDatum.find_or_create_by(week_datum_id: week_datum1.id, date: '8/28')
day_datum7 = DayDatum.find_or_create_by(week_datum_id: week_datum1.id, date: '8/29')

DayKondate.find_or_create_by(day_datum_id: day_datum1.id, period: 0, kondate_id: kondate_test.id)
DayKondate.find_or_create_by(day_datum_id: day_datum1.id, period: 1, kondate_id: kondate_test.id)
DayKondate.find_or_create_by(day_datum_id: day_datum1.id, period: 2, kondate_id: kondate_test.id)

DayKondate.find_or_create_by(day_datum_id: day_datum2.id, period: 0, kondate_id: kondate_test.id)
DayKondate.find_or_create_by(day_datum_id: day_datum2.id, period: 1, kondate_id: kondate_test.id)
DayKondate.find_or_create_by(day_datum_id: day_datum2.id, period: 2, kondate_id: kondate_test.id)

DayKondate.find_or_create_by(day_datum_id: day_datum3.id, period: 0, kondate_id: kondate_test.id)
DayKondate.find_or_create_by(day_datum_id: day_datum3.id, period: 1, kondate_id: kondate_test.id)
DayKondate.find_or_create_by(day_datum_id: day_datum3.id, period: 2, kondate_id: kondate_test.id)

DayKondate.find_or_create_by(day_datum_id: day_datum4.id, period: 0, kondate_id: kondate_test.id)
DayKondate.find_or_create_by(day_datum_id: day_datum4.id, period: 1, kondate_id: kondate_test.id)
DayKondate.find_or_create_by(day_datum_id: day_datum4.id, period: 2, kondate_id: kondate_test.id)

DayKondate.find_or_create_by(day_datum_id: day_datum5.id, period: 0)
DayKondate.find_or_create_by(day_datum_id: day_datum5.id, period: 1)
DayKondate.find_or_create_by(day_datum_id: day_datum5.id, period: 2)

DayKondate.find_or_create_by(day_datum_id: day_datum6.id, period: 0)
DayKondate.find_or_create_by(day_datum_id: day_datum6.id, period: 1)
DayKondate.find_or_create_by(day_datum_id: day_datum6.id, period: 2)

DayKondate.find_or_create_by(day_datum_id: day_datum7.id, period: 0)
DayKondate.find_or_create_by(day_datum_id: day_datum7.id, period: 1)
DayKondate.find_or_create_by(day_datum_id: day_datum7.id, period: 2)
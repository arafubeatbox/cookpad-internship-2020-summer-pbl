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

# https://cookpad.com/recipe/4461647
onion_raddish_salad = Recipe.find_or_create_by(name: '新玉ねぎと大根のサラダ', description: '旬の新玉ねぎと大根を合わせてさっぱりサラダにしました', user_id: User.find_by(name: 'User1').id)

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

# https://cookpad.com/recipe/4073285
tomato_soup = Recipe.find_or_create_by(name: 'トマトスープ', description: '簡単にできる！
  トマトジュースで作る
  リコピンたっぷりスープ♪',
  user_id: User.find_by(name: 'User2').id)

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

# https://cookpad.com/recipe/3247674
ume_rice = Recipe.find_or_create_by(name: '梅ひじきの炊き込みご飯', description: 'かつお出汁と合わさって梅がまろやかになります。いくらでも食べられる美味しさです。', user_id: User.find_by(name: 'User3').id)

RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: umeboshi.id, ingredient_amount: 4)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: hijiki.id, ingredient_amount: 6)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: fried_tofu.id, ingredient_amount: 6)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: rice.id, ingredient_amount: 78)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: soy_sauce.id, ingredient_amount: 3)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: mirin.id, ingredient_amount: 3)
RecipeIngredient.find_or_create_by(recipe_id: ume_rice.id, ingredient_id: sake.id, ingredient_amount: 3)

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
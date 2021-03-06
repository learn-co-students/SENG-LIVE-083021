pepperoni = Ingredient.create(name: 'pepperoni')
jalapeno = Ingredient.create(name: 'jalapeno')
olives = Ingredient.create(name: 'olives')
bacon = Ingredient.create(name: 'bacon')
pineapple = Ingredient.create(name: 'pineapple')
onions = Ingredient.create(name: 'onions')
marinara = Ingredient.create(name: 'marinara')
cheese = Ingredient.create(name: 'cheese')

pepp_pizza = Pizza.create(name: 'Pepperoni pizza', desc: 'Marinara, cheese and pepperoni')
pineapple_pizza = Pizza.create(name: 'Pineapple pizza', desc: 'Marinara, cheese, pineapple and pepperoni')
bacon_pizza = Pizza.create(name: 'Bacon pizza', desc: 'Marinara, cheese, bacon, onions, and jalapeno')

PizzaIngredients.create(pizza_id: pepp_pizza.id, ingredient_id: pepperoni.id)
PizzaIngredients.create(pizza_id: pepp_pizza.id, ingredient_id: marinara.id)
PizzaIngredients.create(pizza_id: pepp_pizza.id, ingredient_id: cheese.id)
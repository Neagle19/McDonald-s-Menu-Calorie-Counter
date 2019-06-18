my_order = []
user_answer = "nothing yet"

Dishes = {
  "Cheeseburger" => 200,
  "Big Mac" => 200,
  "French Fries" => 100,
  "Salad" => 50,
  "Coke" => 50
}

Meals = {
  "Happy Meal" => ["Cheeseburger", "French Fries", "Coke"]
}

until user_answer == "quit"
puts "What would you like to order? Type quit when done"
puts Dishes.keys
puts Meals.keys
user_answer = gets.chomp
  if user_answer != "quit"
    my_order << user_answer
  end
end


puts "calculating your total calories..."
sleep 1

def calorie_counter(order)
  total_calories = 0
  order.each do |order|
    if Meals.has_key?(order)
      total_calories += Dishes[Meals[order][0]] + Dishes[Meals[order][1]] + Dishes[Meals[order][2]]
    else
      total_calories += Dishes[order].to_i
    end
  end
  puts total_calories
end

calorie_counter(my_order)

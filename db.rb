#creates a way to add adn retrieve data from a db. the info will be stored in a diffrent location. For now it is on the same page for simplicity

def db = []

def action = gets

case (action) when
when look_up when
  def look_for = gets
  if db.includes(look_for) do
    puts "#{look_for} is in the system"
  else do
    puts "that person is not in the system, please check your spelling and start agian"
  end
end
when add_person do
  puts "who would you like to add?"
  def name = gets
  puts "#{name}, is that correct? Y/N"
  def is_ok = gets
  # if is_ok === "y" || "Y"{
  #   db.push(name)                     gotta make this a until loop
  # }else{
  #   puts "re-enter the name"
  #   name = gets
  #}

  until is_ok === "y" || "Y" do
    puts "re-eter the name"
    name = gets
    puts "#{name}, is that correct? Y/N"
    is_ok = gets
    puts "we made it to here"
  else do
    db.push(name)
    puts "#{name} has been added to db"
  end
end
end

#im stupid i did this all js style. remake this with "end" rather then "}"
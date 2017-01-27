def create_list
	print "What is the list name? "
	name = gets.chomp

	hash = {"name" => name, "items" => Array.new }
	return hash
end

def print_separator(character="_")
	puts character * 80
end

def print_list(list)
	puts "List: #{list['name']}"
	print_separator()

	list["items"].each do |item|
	  puts "\tItem: " + item['name'] + "\t\t\t" +
	  	"Quantity: " + item['quantity'].to_s
	end

	print_separator()
end

def add_list_item
	print "What is the item? "
	item_name = gets.chomp

	print "How much? "
	quantity = gets.chomp.to_i

	hash = { "name" => item_name, "quantity" => quantity }
	return hash
end

list = create_list()

puts "Great! Add some items to your list."

3.times do
	list['items'].push(add_list_item))
end

puts "Here's your list:\n"
print_list(list)
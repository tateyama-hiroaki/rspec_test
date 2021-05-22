# class User
#   attr_reader :name, :email
  
#   def initialize(name:, email:)
#     @name = name
#     @email = email
#   end
# end

# user = User.new(name: 'Tom', email: 'tom@example.com')
# p user.name
# p user.email


# ary = [1, 2, 3]
# p ary.pop   #=> 3
# p ary       #=> [1, 2]

# class ShoppingCart
#   def initialize
#     @items = []
#   end
#   def add(item)
#     raise 'Item is nil.' if item.nil?
#     @items << item
#   end
# end

# cart = ShoppingCart.new
# p cart.add nil

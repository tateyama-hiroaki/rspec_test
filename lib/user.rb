class User
  attr_accessor :name, :email
  
  def initialize
    @name = name
    @email = email
  end
end

# class User
#   attr_reader :name
  
#   def initialize(name = 'Alice')
#     @name = name
#   end

#   def email
#     "#{@name}@example.com"
#   end
# end

# user = User.new
# p user
# p user.name
# p user.email

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

# class Hello
#   def message
#     "hello"
#   end
# end

# user = Hello.new
# p user                 #=> #<Hello:0x00007f9703962818>
# p user.first_message   #=> "hello"
# p user.last_message    #=> "world!"
# p "#{user.first_message} #{user.last_message}"   #=> "hello world!"

# user = Hello.new('hello', 'world!')
# p user.first_message
# p user.last_message
# p user.first_message + '. ' + user.last_message

# user = Hello.new(first_message: 'hello', last_message: 'world!')
# p user
# p user.first_message
# p user.last_message

# class Hello
#   # attr_accessor :first_message, :last_message

#   # def initialize(first_message:, last_message:)
#   #   @first_message = first_message
#   #   @last_message  = last_message
#   # end
# end

# class Hello
#   def greet
#     'hello, world!.'
#   end  
# end

# class Hello
#   def first_message
#     'hello, '
#   end
#   def last_message
#     'world!.'
#   end
#   def greet
#     first_message + last_message
#   end
# end

# class User
#   attr_accessor :name, :age

#   def initialize(name:, age:)
#     @name = name
#     @age = age
#   end
# end

#   def name
#     @name
#   end

#   def age
#     @age
#   end

# user = User.new(name: 'Alice', age: 18)
# p user.name
# p user.age

# class User
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age  = age
#   end
#   def name
#     @name
#   end
#   def age
#     @age
#   end
#   def name=(value)
#     @name = value
#   end
#   def age=(value)
#     @age = value
#   end
# end

# user = User.new('Alice', 18)
# p user
# p user.name
# p user.age
# user.name = 'Bob'
# user.age = 17
# p user.name
# p user.age

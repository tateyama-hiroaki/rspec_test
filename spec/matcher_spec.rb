# RSpec.describe 'Sample Code' do
#   it '' do
    
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '1 + 2 が 3 以上であること' do
#     expect(1 + 2).to be >= 3
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '同一のインスタンスかどうかの検証' do
#     message = 'Hello'
#     # [message].first.equal? messageを検証している
#     expect([message].first).to be message
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '同一のインスタンスかどうかの検証' do
#     message_1 = 'Hello'
#     message_2 = 'Hello'
#     expect([message_1].first).to be message_2
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '同一の文字列かどうかの検証' do
#     message_1 = 'Hello'
#     message_2 = 'Hello'
#     expect([message_1].first).to eq message_2
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '同一の文字列かどうかの検証' do
#     message_1 = 'Hello'
#     message_2 = 'Hello'
#     expect(message_1).to eq message_2
#   end
# end

# RSpec.describe 'Sample Code' do
#   it 'true はいつでも同じインスタンスであることの検証' do
#     expect(true).to be true
#   end
#   it 'false はいつでも同じインスタンスであることの検証' do
#     expect(false).to be false
#   end
#   it 'nil はいつでも同じインスタンスであることの検証' do
#     expect(nil).to be nil
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '整数値はいつでも同じインスタンスであることの検証' do
#     expect(1 + 1).to be 2
#   end
#   it 'シンボルはいつでも同じインスタンスであることの検証' do
#     expect(:foo).to be :foo
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '配列が空かどうかの検証' do
#     expect([]).to be_empty
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '配列が空かどうかの検証' do
#     expect([].empty?).to be true
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '配列が空かどうかの検証' do
#     expect([].empty?).to eq true
#   end
# end

# require 'spec_helper'

# RSpec.describe 'Sample Code' do
#   let!(:user) { User.new(name: 'Tom', email: 'tom@example.com') }
#   it '名前が同一であるかどうかの検証' do
#     expect(user.name).to eq 'Tom'
#   end
#   it 'メールアドレスが同一であるかどうかの検証' do
#     expect(user.email).to eq 'tom@example.com'
#   end
# end

# RSpec.describe 'Sample Code' do
#   it 'be_truthy' do
#     expect(1).to be_truthy
#   end
#   it 'be_falsey' do
#     expect(nil).to be_falsey
#   end
# end

# RSpec.describe 'Sample Code' do
#   it 'true' do
#     expect(1).to be true
#   end
#   it 'false' do
#     expect(nil).to be false
#   end
# end

# RSpec.describe 'Sample Code' do
#   it 'true' do
#     expect(1).to be true
#   end
#   it 'false' do
#     expect(nil).to be false
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '真かどうかの検証' do
#     expect(1).to eq true
#   end
#   it '偽かどうかの検証' do
#     expect(nil).to eq false
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '真かどうかの検証' do
#     expect(1).to be_truthy
#   end
#   it '偽かどうかの検証' do
#     expect(nil).to be_falsey
#   end
# end

# RSpec.describe 'Sample Code' do
#   it 'popメソッドを呼ぶと配列の要素が減少することをテストする' do
#     x = [1, 2, 3]
#     expect(x.size).to eq 3
#     x.pop
#     expect(x.size).to eq 2  
#   end
# end

# RSpec.describe 'Sample Code' do
#   it 'popメソッドを呼ぶと配列の要素が減少することをテストする' do
#     x = [1, 2, 3]
#     expect{ x.pop }.to change{ x.size }.from(3).to(2)
#   end
# end

# RSpec.describe 'Sample Code' do
#   it 'popメソッドを呼ぶと配列の要素が減少することをテストする' do
#     x = [1, 2, 3]
#     expect{ x.pop }.to change{ x.size }.by(-1)
#   end
# end

# RSpec.describe 'Sample Code' do
#   it 'popメソッドを呼ぶと配列の要素が増加することをテストする' do
#     x = [1, 2, 3]
#     expect{ x.push(10) }.to change{ x.size }.by(1)
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '1が含まれていることを検証する' do
#     x = [1, 2, 3]
#     expect(x).to include 1
#   end
#   it '1と3が含まれていることを検証する' do
#     x = [1, 2, 3]
#     expect(x).to include 1, 3    
#   end
# end

# RSpec.describe 'Sample Code' do
#   it '0で除算するとエラーが起きることをテストする' do
#     expect{ 1 / 0 }.to raise_error ZeroDivisionError
#   end
# end

# class ShoppingCart
#   def initialize
#     @items = []
#   end
#   def add(item)
#     raise 'Item is nil.' if item.nil?
#     @items << item
#   end
# end

# RSpec.describe ShoppingCart do
#   it 'nilを追加するとエラーが発生すること' do
#     cart = ShoppingCart.new
#     expect{ cart.add nil }.to raise_error 'Item is nil.'
#   end
# end

class Lottery
  KUJI = %w(あたり はずれ はずれ はずれ)
  def initialize
    @result = KUJI.sample
  end
  def win?
    @result == 'あたり'
  end
  def self.generate_results(count)
    Array.new(count){ self.new }
  end
end

RSpec.describe 'Sample Code' do
  it '当選確率が約25%になっていること' do
    results = Lottery.generate_results(10000)
    win_count = results.count(&:win?)
    probability = win_count.to_f / 10000 * 100
  
    expect(probability).to be_within(1.0).of(25.0)
  end
end

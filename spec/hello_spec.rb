# require_relative '../lib/hello'

# RSpec.describe Hello do
#   it "message return hello" do
#     expect(Hello.new.message).to eq "hello"
#   end
# end

# RSpec.describe 'methods testing' do
#   let(:user) { Hello.new}
#   describe '#first_message' do
#     it 'message return hello' do
#       expect(user.first_message).to eq 'hello'
#     end
#   end
# end

# クラスにinitializeメソッドを追加
# contextとsubjectを使ってみる

# RSpec.describe Hello do
#   describe 'methods testing' do
#     let(:user) { Hello.new }
#     describe '#first_message' do
#       it 'message return hello' do
#         expect(user.first_message).to eq 'hello'
#       end
#     end
#     describe '#last_message' do
#       it 'message return world!' do
#         expect(user.last_message).to eq 'world!'
#       end
#     end
#     describe '#first_message + #last_message' do
#       it 'message return hello world!' do
#         expect("#{user.first_message} #{user.last_message}").to eq 'hello world!'
#       end
#     end
#   end
# end

# RSpec.describe Hello do
#   let(:user) { Hello.new(first_message: 'hello', last_message: 'world!') }
#   subject { user.first_message }
#   describe '#first_message' do
#     it { is_expected.to eq 'hello' }        
#   end
# end

# require 'spec_helper'

# RSpec.describe Hello do
#   let(:user) { Hello.new }
#   subject { user.greet }
#   describe '#greet' do
#     # it 'message return hello world' do
#     #   expect(user.greet).to eq 'hello, world!.'
#     # end
#     # it 'message return hello world' do
#     #   # expect(user.greet).to eq 'hello, world!.'
#     #   is_expected.to eq 'hello, world!.'
#     # end

#     it { is_expected.to eq 'hello, world!.' }
#   end
# end

# RSpec.describe Hello do
#   let(:user) { Hello.new }
#   describe '#first_message' do
#     it 'message return hello' do
#       expect(user.first_message).to eq 'hello, '
#     end
#   end
#   describe '#last_message' do
#     it 'message return world' do
#       expect(user.last_message).to eq 'world!.'
#     end
#   end
#   describe '#greet' do
#     it 'message return "hello, world!."' do
#       expect(user.greet).to eq 'hello, world!.'
#     end
#   end
# end

# require 'spec_helper'

# RSpec.describe 'big or small' do
#   it 'bigの場合' do
#     value = 100
#   end
#   it 'smallの場合' do
#     value = 100
#   end
# end

# RSpec.describe '選挙権があるかどうかの判定' do
#   let(:user) { User.new(name: 'Alice', age: age) }
#   subject { user.age }
#   context '18歳の場合' do
#     let(:age) { 18 }
#     it { is_expected.to eq 18 }
#   end
#   context '17歳の場合' do
#     let(:age) { 17 }
#     it { is_expected.to eq 17 }
#   end
# end

# RSpec.describe '配列の要素を保証するテスト' do
#   let(:ary) { [1, 2, 3] }
#   it '配列の第１要素が１である' do
#     expect(ary[0]).to eq 1
#   end
#   it '配列の第２要素が２である' do
#     expect(ary[1]).to eq 2
#   end
#   it '配列の第３要素が３である' do
#     expect(ary[2]).to eq 3
#   end
#   it '配列の要素数が４である' do
#     expect(ary.push(4).size).to eq 4
#   end
# end

RSpec.describe '配列の要素を保証するテスト' do
  let(:ary) { [1, 2, 3] }
  shared_examples '第１要素' do
    it '配列の第１要素が１である' do
      expect(ary[0]).to eq 1
    end  
  end
  it_behaves_like '第１要素'
end


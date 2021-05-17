# RSpec.describe '四則演算' do
#   it '1 + 1 は 2 になること' do
#     expect(1 + 1).to eq 2
#   end
# end

# RSpec.describe '四則演算' do
#   it '1 + 1 は 2 になること' do
#     expect(1 + 1).to eq 2
#   end
#   it '10 - 1 は 9 になること' do
#     expect(10 - 1).to eq 9
#   end
# end

# RSpec.describe '四則演算' do
#   it '全部できること' do
#     expect(1 + 2).to eq 3
#     expect(10 - 1).to eq 9
#     expect(4 * 8).to eq 32
#     expect(40 / 5).to eq 8
#   end
# end

# RSpec.describe '四則演算' do
#   describe '足し算' do
#     it '1 + 1 は 2 になること' do
#       expect(1 + 1).to eq 2
#     end
#   end
#   describe '引き算' do
#     it '10 - 1 は 9 になること' do
#       expect(10 - 1).to eq 9
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     it '12歳以下の場合、ひらがなで答えること' do
#       user = User.new(name: 'たろう', age: 12)
#       expect(user.greet).to eq 'ぼくはたろうだよ。'
#     end
#     it '13歳以上の場合、漢字で答えること' do
#       user = User.new(name: 'たろう', age: 13)
#       expect(user.greet).to eq '僕はたろうです。'
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     context '12歳以下の場合' do
#       it 'ひらがなで答えること' do
#         user = User.new(name: 'たろう', age: 12)
#         expect(user.greet).to eq 'ぼくはたろうだよ。'
#       end
#     end
#     context '13歳以上の場合' do
#       it '漢字で答えること' do
#         user = User.new(name: 'たろう', age: 13)
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     before do
#       @params = { name: 'たろう' }
#     end
#     context '12歳以下の場合' do
#       it 'ひらがなで答えること' do
#         user = User.new(@params.merge(age: 12))
#         expect(user.greet).to eq 'ぼくはたろうだよ。'
#       end
#     end
#     context '13歳以上の場合' do
#       it '漢字で答えること' do
#         user = User.new(@params.merge(age: 13))
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     before do
#       @params = { name: 'たろう' }
#     end
#     context '12歳以下の場合' do
#       before do
#         @params.merge!(age: 12)
#       end
#       it 'ひらがなで答えること' do
#         user = User.new(@params)
#         expect(user.greet).to eq 'ぼくはたろうだよ。'
#       end
#     end
#     context '13歳以上の場合' do
#       before do
#         @params.merge!(age: 13)
#       end
#       it '漢字で答えること' do
#         user = User.new(@params)
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     let(:params) { { name: 'たろう' } }
#     context '12歳以下の場合' do
#       before do
#         params.merge!(age: 12)
#       end
#       it 'ひらがなで答えること' do
#         user = User.new(params)
#         expect(user.greet).to eq 'ぼくはたろうだよ。'
#       end
#     end
#     context '13歳以上の場合' do
#       before do
#         params.merge!(age: 13)
#       end
#       it '漢字で答えること' do
#         user = User.new(params)
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     let(:user) { User.new(params) }
#     let(:params) { { name: 'たろう' } }
#     context '12歳以下の場合' do
#       before do
#         params.merge!(age: 12)
#       end
#       it 'ひらがなで答えること' do
#         expect(user.greet).to eq 'ぼくはたろうだよ。'
#       end
#     end
#     context '13歳以上の場合' do
#       before do
#         params.merge!(age: 13)
#       end
#       it '漢字で答えること' do
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     let(:user) { User.new(params) }
#     let(:params) { { name: 'たろう', age: age } }
#     context '12歳以下の場合' do
#       let(:age) { 12 }
#       it 'ひらがなで答えること' do
#         expect(user.greet).to eq 'ぼくはたろうだよ。'
#       end
#     end
#     context '13歳以上の場合' do
#       let(:age) { 13 }
#       it '漢字で答えること' do
#         expect(user.greet).to eq '僕はたろうです。'
#       end
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     let(:user) { User.new(params) }
#     let(:params) { { name: 'たろう', age: age } }
#     subject { user.greet }
#     context '12歳以下の場合' do
#       let(:age) { 12 }
#       it 'ひらがなで答えること' do
#         is_expected.to eq 'ぼくはたろうだよ。'
#       end
#     end
#     context '13歳以上の場合' do
#       let(:age) { 13 }
#       it '漢字で答えること' do
#         is_expected.to eq '僕はたろうです。'
#       end
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     let(:user) { User.new(params) }
#     let(:params) { { name: 'たろう', age: age } }
#     subject { user.greet }
#     context '12歳以下の場合' do
#       let(:age) { 12 }
#       it { is_expected.to eq 'ぼくはたろうだよ。' }
#     end
#     context '13歳以上の場合' do
#       let(:age) { 13 }
#       it { is_expected.to eq '僕はたろうです。' }
#     end
#   end
# end

class User
  def initialize(name:, age:)
    @name = name
    @age = age
  end
  def greet
    if @age <= 12
      "ぼくは#{@name}だよ。"
    else
      "僕は#{@name}です。"
    end
  end
end

RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'たろう', age: age) }
    subject { user.greet }
    context '12歳以下の場合' do
      let(:age) { 12 }
      it { is_expected.to eq 'ぼくはたろうだよ。' }
    end
    context '13歳以上の場合' do
      let(:age) { 13 }
      it { is_expected.to eq '僕はたろうです。' }
    end
  end
end
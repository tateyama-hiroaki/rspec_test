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

# require 'spec_helper'

# RSpec.describe User do
#   describe '#greet' do
#     let(:user) { User.new(name: 'たろう', age: age) }
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

# RSpec.describe 'test' do
#   it '1 + 1 は 2 になること' do
#     expect(1 + 1).to eq 2
#   end
#   specify '1 + 1 は 2 になること' do
#     expect(1 + 1).to eq 2
#   end
#   example '1 + 1 は 2 になること' do
#     expect(1 + 1).to eq 2
#   end  
# end

# RSpec.describe User do
#   describe '#greet' do
#     let(:user) { User.new(name: 'たろう', age: age) }
#     subject { user.greet }

#     shared_examples '子どものあいさつ' do
#       it { is_expected.to eq 'ぼくはたろうだよ。' }
#     end
#     context '0歳の場合' do
#       let(:age) { 0 }
#       it_behaves_like '子どものあいさつ'
#     end
#     context '12歳の場合' do
#       let(:age) { 12 }
#       it_behaves_like '子どものあいさつ'
#     end

#     shared_examples '大人のあいさつ' do
#       it { is_expected.to eq '僕はたろうです。' }
#     end
#     context '13歳の場合' do
#       let(:age) { 13 }
#       it_behaves_like '大人のあいさつ'
#     end
#     context '100歳の場合' do
#       let(:age) { 100 }
#       it_behaves_like '大人のあいさつ'
#     end
#   end
# end

# RSpec.describe User do
#   describe '#greet' do
#     let(:user) { User.new(name: 'たろう', age: age) }
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

#   describe '#child?' do
#     let(:user) { User.new(name: 'たろう', age: age) }
#     subject { user.child? }
#     context '12歳以下の場合' do
#       let(:age) { 12 }
#       it { is_expected.to eq true }
#     end
#     context '13歳以上の場合' do
#       let(:age) { 13 }
#       it { is_expected.to eq false }
#     end
#   end
# end

# RSpec.describe User do
#   let(:user) { User.new(name: 'たろう', age: age) }
#   shared_context '12歳の場合' do
#     let(:age) { 12 }
#   end
#   shared_context '13歳の場合' do
#     let(:age) { 13 }
#   end

#   describe '#greet' do
#     subject { user.greet }
#     context '12歳以下の場合' do
#       include_context '12歳の場合'
#       it { is_expected.to eq 'ぼくはたろうだよ。' }
#     end
#     context '13歳以上の場合' do
#       include_context '13歳の場合'
#       it { is_expected.to eq '僕はたろうです。' }
#     end
#   end

#   describe '#child?' do
#     subject { user.child? }
#     context '12歳以下の場合' do
#       include_context '12歳の場合'
#       it { is_expected.to eq true }
#     end
#     context '13歳以上の場合' do
#       include_context '13歳の場合'
#       it { is_expected.to eq false }
#     end
#   end
# end

# RSpec.describe '繊細なクラス' do
#   it '繊細なテスト' do
#     expect(1 + 2).to eq 3

#     pending 'この先はなぜかテストが失敗するのであとで直す'
#     # パスしないエクスペクテーション（実行される）
#     expect(foo).to eq bar
#   end
# end

# RSpec.describe '何らかの理由で実行したくないクラス' do
#   it '実行したくないテスト' do
#     expect(1 + 2).to eq 3

#     skip 'とりあえずここで実行を保留'
#     # ここから先は実行されない
#     expect(foo).to eq bar
#   end
# end

# RSpec.describe '何らかの理由で実行したくないクラス' do
#   xit '実行したくないテスト' do
#     expect(1 + 2).to eq 3

#     expect(foo).to eq bar
#   end
# end

# グループ全体をskipする
# RSpec.xdescribe '四則演算' do
#   it '1 + 1 は 2 になること' do
#     expect(1 + 1).to eq 2
#   end
#   it '10 - 1 は 9 になること' do
#     expect(10 - 1).to eq 9
#   end
# end

# グループ全体をskipする
# RSpec.xcontext '管理者の場合' do
#   it '社員情報を編集できる' do
#     # ...
#   end
#   it '社員情報を削除できる' do
#     # ...
#   end
# end

require 'spec_helper'

RSpec.describe User do
  describe '#good_bye' do
    context '12歳以下の場合' do
      it 'ひらがなでさよならすること'
    end
    context '13歳以上の場合' do
      it '漢字でさよならすること'
    end
  end
end
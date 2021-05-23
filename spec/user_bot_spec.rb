# RSpec.describe User do
#   it 'モックのテスト' do
#     # 空のモックオブジェクトを作成
#     user_mock = double('User')
#     # モックに呼び出し可能なメソッドを設定する
#     # allow(user_mock).to receive(:email)
#     expect(user_mock).to receive(:email)
#     # アプリケーションにモックをこっそり送り込む
#     # user_bot = User.new
#     # allow(user_bot).to receive(:email).and_return(user_mock)
#     # テストしたいメソッドを呼び出す
#     # expect(user_bot.email).to eq user_mock
#     # モックのメソッドがちゃんと呼び出されることを検証する
#   end
# end

require 'spec_helper'

RSpec.describe User do
  let(:user_mock) { double('User Mock') }
  let(:user_bot) { User.new }

  it '#nameのモック' do
    allow(user_mock).to receive(:name)
    allow(user_bot).to receive(:name).and_return(user_mock)
    expect(user_bot.name).to eq user_mock
  end 
  it '#emailのモック' do
    allow(user_mock).to receive(:email)
    allow(user_bot).to receive(:email).and_return(user_mock)
    expect(user_bot.email).to eq user_mock
  end 
end
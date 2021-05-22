# require 'spec_helper'

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
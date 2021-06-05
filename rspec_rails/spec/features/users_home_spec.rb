# require 'rails_helper'

# RSpec.feature 'root page' do
#   xscenario 'ルートページからの操作' do
#     visit root_path
#     visit current_path
#     click_button 'Save'
#     click_link 'Help'
#     fill_in 'タイトル', with: 'あけましておめでとうございます。'
#     select '平成', from: '和暦'
#     check 'メールマガジンを購読する'
#     uncheck 'メールマガジンを購読する'
#     choose '女性'
#     fill_in 'blog_title', with: 'あけましておめでとうございます。'
#     select '平成', from: 'japanese_calendar'
#     check 'mailmagazine'
#     expect(page).to have_content 'ユーザーが作成されました。'
#     expect(page).to have_selector 'h1', text: '大事なお知らせ'
#     expect(page).to have_selector '.information', text: '大事なお知らせ'
#     expect(page).to have_selector '#information', text: '大事なお知らせ'
#     expect(page).to have_selector 'a[data-method=delete]', text: 'delete'
#     expect(page).to have_selector 'h1', text: /^大事なお知らせ$/
#     expect(page).to have_button 'Save'
#     expect(page).to have_link '会員登録はこちら'
#     expect(page).to have_css '.field_with_errors'
#     expect(page).to have_field 'タイトル', with: 'あけましておめでとうございます。'
#     expect(page).to have_checked_field('メールマガジンを購読する')
#     expect(page).to have_unchecked_field('メールマガジンを購読する')
#     expect(page).to have_field('メールマガジンを購読する')
#     expect(page).to have_select('和暦', selected: '昭和')
#     expect(page).to have_select('和暦', selected: '昭和', options: ['明治', '大正', '昭和', '平成'])
#     within find_field('和暦') do
#       all('options').each do |option|
#         expect(option['selected']).to be_blank
#       end
#     end
#     expect(find_field('和暦').value).to eq 'meiji'
#     expect(page).to have_checked_field('男性')    
#     expect(page).to have_title 'RspecRails'
#     expect(find('#secret_value', visible: false).value).to eq 'secret!!'
#     expect(find('#blog_title')).to be_disabled
#     expect(page).to have_field 'タイトル', disabled: true
#     expect(page).to have_field 'タイトル', disabled: false
#     expect(find('.secret-message', visible: false)).to_not be_visible
#     button = find_button 'Create User'
#     expect(button['data-confirm']).to eq 'Are you sure?'
#     click_on 'Help'
#     expect(page).to have_http_status(:success)
#     find('.settings-link').click
#     find('#settings-link').click
#     link = find('.settings-link')
#     expect(link[:href]).to eq help_path
#     link = find('#settings-link')
#     expect(link[:href]).to eq help_path
#     link = find('a', text: 'About Ruby')
#     link.click
#     choose 'はい'
#     within '.section-disease' do
#       choose 'はい'
#     end
#     within '.section-disease' do
#       choose 'はい'
#     end
#     all('tbody tr')[1].click_link 'Edit'
#     all('tbody tr')[0].click_link 'Edit'
#     first('tbody tr').click_link 'Edit'
#     within first('tbody tr') do
#       click_link 'Edit'
#     end
#     contact = Contact.find_by(name: 'Adaline Gleason')
#     expect(page).to have_link 'About', href: about_path
#     click_link 'About',href: about_path(contact)
#     expect(page).to have_link nil, href: about_path
#     click_link nil, href: about_path
#     fill_in 'search-text', with: 'Capybara'
#     find('#search-text').native.send_key(:Enter)
#     expect(page).to have_content 'Capybaraの検索結果'
#     attach_file 'アイコン画像', "#{Rails.root}/app/assets/images/rails.png"
#     html = page.html
#     expect(page.html).to eq html
#     html = find('.image').native.inner_html
#     expect(page).to have_selector 'img'
#   end

#   xscenario '新しいウインドウの内容を検証する', js: true do
# 	  visit root_path
# 	  click_on '新しいウインドウを開く'
# 	  handle = page.driver.browser.window_handles.last
# 	  page.driver.browser.within_window(handle) do
# 		expect(page).to have_content '新しいウインドウの内容'
# 	  end
# 	end
# end
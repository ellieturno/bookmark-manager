feature 'Deleting Bookmarks' do
  scenario 'delete bookmark from list' do
    Bookmark.create(title: 'Google', url: 'http://www.google.com')
    visit('/bookmarks')
    expect(page).to have_link('Google', href: 'http://www.google.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).to_not have_link('Google', href: 'http://www.google.com')
  end
end

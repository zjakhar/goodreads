require "rails_helper"

feature "when visiting the index page" do
  let!(:book_1) { FactoryBot.create(:book) }
  let!(:book_2) { FactoryBot.create(:book) }
  let!(:the_expanse) { Book.create(title: "Leviathan's Wake", author: "James S. A. Corey", isbn: "5555535555555") }


  scenario "user sees a list of books" do
    visit '/'

    expect(page).to have_content(book_1.title)
    expect(page).to have_content(book_2.title)
    expect(page).to have_content(the_expanse.title)
  end
end

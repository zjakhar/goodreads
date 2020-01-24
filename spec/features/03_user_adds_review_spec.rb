require 'rails_helper'

feature "when adding a new book" do
  let!(:name_of_the_wind) { FactoryBot.create(:book) }

  scenario "adds a review successfully" do

    visit book_path(name_of_the_wind)
    click_link 'Add a Review'

    expect(page).to have_content "Review form for #{name_of_the_wind.title}"

    fill_in "Rating", with: 5
    fill_in "Review", with: "This book is hella awesome"
    click_button "Add Review"

    expect(page).to have_content name_of_the_wind.title
    expect(page).to have_content 5
    expect(page).to have_content "This book is hella awesome"
  end

  scenario "adds a review unsuccessfully" do
    visit book_path(name_of_the_wind)
    click_link 'Add a Review'
    click_button 'Add Review'

    expect(page).to have_content "Rating can't be blank and Body can't be blank"
  end
end

require 'rails_helper'

RSpec.feature "Creating Articles" do
  scenario "A user recates a new article" do
    visit "/"
    
    click_link "New Article"
    
    fill_in "Title", with: "Creating first article"
    fill_in "Body", with: "Lorem Ipsum"
    click_button "Create Article"
    
    expect(page).to have_content("Article has ben created")
    expect(page.current_path).to eq(articles_path)
  end
end
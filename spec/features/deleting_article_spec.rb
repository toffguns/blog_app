require "rails_helper"

RSpec.feature "Deleting an Article" do
  
  before do
    @article = Article.create(title: "First Article", body: "Body of first Article")
  end
  
  scenario "A user deletes an article" do
    visit "/"
    
    click_link @article.title
    click_link "Delete Article"
    
    expect(page).to have_content
    expect(current_path).to eq(articles_path)
  end
end


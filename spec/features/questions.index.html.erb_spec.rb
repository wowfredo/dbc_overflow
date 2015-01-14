# Questions Controller Spec
  # Index page has a new question form
  # Show page has a new answer form
  # Show page has a destroy question link
  # Edit page exists
  # Edit page has an update question form

require 'rails_helper'

describe "questions/index.html.erb", :js => true do
  let!(:question) { FactoryGirl.create(:question) }
  before (:each) do
    visit root_path
  end

  it "displays a list of all questions" do
    expect(page).to have_content(question.title)
  end

  it "can create a new question" do
    question = FactoryGirl.attributes_for :question
    fill_in "title", :with => question[:title]
    fill_in "content", :with => question[:content]

    click_on "Create"
    expect(page).to have_content question[:content]
  end

end
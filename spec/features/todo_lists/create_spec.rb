require 'spec_helper'
require 'rails_helper'

describe 'creating todo lists' do
  it 'redirects to the todo list index page on success' do
    visit "/todo_lists"
    click_link 'New Todo list'
    expect(page).to have_content('New Todo List')
  end

  it 'creates a new todo item' do
    visit '/todo_lists/new'
    fill_in "Title", with: "My todo list"
    fill_in "Description", with: "This is what I'm doing today."
    click_button "Create Todo list"
    expect(page).to have_content("My todo list")
  end

end
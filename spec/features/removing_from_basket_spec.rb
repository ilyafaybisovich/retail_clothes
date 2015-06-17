require 'rails_helper'

feature 'customer can remove items from the basket' do
  scenario 'which has Suede Shoes, Blue in it' do
    suede_shoes = Product.create name: 'Suede Shoes, Blue'
    visit '/'
    click_button 'Add to Basket'
    click_button 'Remove from Basket'
    expect(page).not_to have_content 'Suede Shoes, Blue'
  end
end
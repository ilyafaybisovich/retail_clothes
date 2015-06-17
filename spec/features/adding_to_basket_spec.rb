require 'rails_helper'

feature 'customer can add products to basket' do
  scenario 'adding Suede shoes' do
    suede_shoes = Product.create name: 'Suede Shoes, Blue'
    visit '/'
    click_button 'Add to Basket'
    expect(page).to have_content 'Your Basket'
    expect(page).to have_content 'Suede Shoes, Blue'
  end
end
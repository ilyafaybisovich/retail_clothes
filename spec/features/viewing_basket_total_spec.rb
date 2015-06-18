require 'rails_helper'

feature 'customer can view the total of the items in their basket' do
  scenario 'which includes Suede shoes, Blue' do
    suede_shoes = Product.create name: 'Suede Shoes, Blue', price: 42.00
    visit '/'
    click_button 'Add to Basket'
    expect(page).to have_content 'Total: $42.00'
  end
end
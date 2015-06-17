class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :product, index: true, foreign_key: true
      t.belongs_to :basket, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

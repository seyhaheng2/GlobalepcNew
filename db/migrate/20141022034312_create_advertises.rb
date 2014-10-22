class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.string :name
      t.string :image
      t.references :category, index: true

      t.timestamps
    end
  end
end

class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.text :primary
      t.text :secondary
      t.string :country
      t.string :state
      t.string :district
      t.integer :user_id

      t.timestamps
    end
  end
end

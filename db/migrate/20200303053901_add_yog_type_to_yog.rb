class AddYogTypeToYog < ActiveRecord::Migration[6.0]
  def change
    add_column :yogs, :yog_type, :string
  end
end

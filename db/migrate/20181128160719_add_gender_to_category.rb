class AddGenderToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :gender, :string
  end
end

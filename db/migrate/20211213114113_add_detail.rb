class AddDetail < ActiveRecord::Migration[6.0]
  def change
      add_column :blogs, :description2, :text
  end
end

class AddImageToMe < ActiveRecord::Migration[5.2]
  def change
    add_column :mes, :image, :string
  end
end

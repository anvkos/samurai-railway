class AddNumberToCarriages < ActiveRecord::Migration[5.0]
  def change
    add_column :carriages, :number, :integer
  end
end

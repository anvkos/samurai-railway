class AddColumnsSeatsToCarriages < ActiveRecord::Migration[5.0]
  def change
    add_column :carriages, :side_upper_seats, :integer
    add_column :carriages, :side_lower_seats, :integer
    add_column :carriages, :sitting_seats, :integer
  end
end

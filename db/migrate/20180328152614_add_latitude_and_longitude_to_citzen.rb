class AddLatitudeAndLongitudeToCitzen < ActiveRecord::Migration[5.1]
  def change
    add_column :citzens, :latitude, :float
    add_column :citzens, :longitude, :float
  end
end

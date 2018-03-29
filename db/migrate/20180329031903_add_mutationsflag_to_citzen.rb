class AddMutationsflagToCitzen < ActiveRecord::Migration[5.1]
  def change
    add_column :citzens, :neon_flag, :integer
    add_column :citzens, :eye_flag, :integer
  end
end

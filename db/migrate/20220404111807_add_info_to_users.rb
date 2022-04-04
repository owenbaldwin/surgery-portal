class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dob, :date
    add_column :users, :nin, :string
    add_column :users, :is_doctor, :boolean
  end
end

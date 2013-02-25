class AddSexMnameEmail < ActiveRecord::Migration
  def up
 add_column :neighbors, :sex, :string
 add_column :neighbors, :middle_name, :string
 add_column :neighbors, :email, :string


  end

  def down
  end
end

class RemoveSexMnameEmail < ActiveRecord::Migration
  def up

 remove_column :neighbors, :sex
 remove_column :neighbors, :middle_name
 remove_column :neighbors, :email

  end


  def down
  end
end

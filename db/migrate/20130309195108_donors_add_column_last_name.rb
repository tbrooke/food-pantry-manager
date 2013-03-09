class DonorsAddColumnLastName < ActiveRecord::Migration
  def up
    add_column :donors, :last_name
  end

  def down
    drop_column :donors, :last_name
  end
end

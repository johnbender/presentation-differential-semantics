class AddBaksToFoo < ActiveRecord::Migration
  def up
    drop_column :foo, :bak
    add_column :foo, :baks, varchar(20)
  end

  def down
    add_column :foo, :bak, varchar(10)
    remove_column :foo, :baks
  end
end

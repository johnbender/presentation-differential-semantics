class AddBaksToFoo < ActiveRecord::Migration
  def up
    add_column :foo, :baks, varchar(10)
  end

  def down
    remove_column :foo, :baks
  end
end

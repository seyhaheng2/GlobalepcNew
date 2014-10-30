class AddColumnsToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :type, index: true
  end
end

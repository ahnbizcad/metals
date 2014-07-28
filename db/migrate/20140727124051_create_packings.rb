class CreatePackings < ActiveRecord::Migration
  def change
    create_table :packings do |t|

      t.timestamps
    end
  end
end

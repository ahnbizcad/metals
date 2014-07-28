class CreatePortOfLoadings < ActiveRecord::Migration
  def change
    create_table :port_of_loadings do |t|

      t.timestamps
    end
  end
end

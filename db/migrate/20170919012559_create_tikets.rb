class CreateTikets < ActiveRecord::Migration[5.1]
  def change
    create_table :tikets do |t|
t.string :plate
t.string :vtype
t.datetime :init
t.datetime :exit
t.integer :price

      t.timestamps
    end
  end
end

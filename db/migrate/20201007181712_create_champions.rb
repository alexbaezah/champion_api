class CreateChampions < ActiveRecord::Migration[6.0]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :rol
      t.string :region
      t.string :comp

      t.timestamps
    end
  end
end

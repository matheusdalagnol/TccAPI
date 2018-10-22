class CreateVictims < ActiveRecord::Migration[5.2]
  def change
    create_table :victims do |t|
      t.string :name
      t.references :aggressor, foreign_key: true

      t.timestamps
    end
  end
end

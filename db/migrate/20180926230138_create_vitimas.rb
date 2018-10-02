class CreateVitimas < ActiveRecord::Migration[5.2]
  def change
    create_table :vitimas do |t|
      t.string :nome
      t.float :latitude
      t.float :longitude
      t.belongs_to :agressor, foreign_key: true

      t.timestamps
    end
  end
end

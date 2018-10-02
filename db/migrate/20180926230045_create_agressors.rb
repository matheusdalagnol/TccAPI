class CreateAgressors < ActiveRecord::Migration[5.2]
  def change
    create_table :agressors do |t|
      t.string :nome
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

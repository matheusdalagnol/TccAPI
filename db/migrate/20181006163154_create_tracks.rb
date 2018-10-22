class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :latitude
      t.string :longitude
      t.references :trackable, polymorphic: true, index: true

      t.timestamps
    end
  end
end

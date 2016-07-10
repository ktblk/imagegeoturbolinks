class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.references :user, foreign_key: true
      t.text :caption

      t.timestamps
    end
  end
end

class CreateSlopes < ActiveRecord::Migration[6.0]
  def change
    create_table :slopes do |t|
      t.string :name
      t.string :difficulty
      t.string :length
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, foreign_key: true
      t.boolean :disactive

      t.timestamps
    end
  end
end

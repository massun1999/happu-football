class CreateThreds < ActiveRecord::Migration[6.0]
  def change
    create_table :threds do |t|
      t.text :content, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end

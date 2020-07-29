class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.belongs_to :user, index: true
      
      t.timestamps
    end
  end
end

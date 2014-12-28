class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text    :text
      t.date    :date
      t.integer :task_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

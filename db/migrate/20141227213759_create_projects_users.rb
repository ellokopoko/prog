class CreateProjectsUsers < ActiveRecord::Migration
  def change
    create_table :projects_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :project, index: true
    end
    add_foreign_key :projects_users, :users
    add_foreign_key :projects_users, :projects
  end
end

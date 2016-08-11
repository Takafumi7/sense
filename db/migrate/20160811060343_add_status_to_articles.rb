class AddStatusToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :status, :boolean, default: false, null: false
  end
end

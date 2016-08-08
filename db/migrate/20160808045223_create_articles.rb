class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
       t.integer  :user_id
       t.text  :text
       t.text  :image
      t.timestamps
    end
  end
end

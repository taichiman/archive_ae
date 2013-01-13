class ActAsFileStorage < ActiveRecord::Migration
  def change
    [:pages, :users, :posts, :articles, :recipes, :blogs].each do |table_name|
      change_table table_name do |t|
        t.integer :files_count, default: 0
        t.integer :files_size,  default: 0
      end
    end
  end
end

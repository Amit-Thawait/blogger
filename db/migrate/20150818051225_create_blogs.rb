class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.boolean :is_draft, default: true
      t.boolean :is_published, default: false
      t.datetime :published_at

      t.timestamps null: false
    end

    add_index :blogs, :title
    add_index :blogs, :is_draft
    add_index :blogs, :is_published
  end
end

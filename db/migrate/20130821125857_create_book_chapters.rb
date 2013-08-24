class CreateBookChapters < ActiveRecord::Migration
  def change
    create_table :book_chapters do |t|

      t.timestamps
    end
  end
end

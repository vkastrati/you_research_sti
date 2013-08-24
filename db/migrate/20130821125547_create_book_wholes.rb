class CreateBookWholes < ActiveRecord::Migration
  def change
    create_table :book_wholes do |t|

      t.timestamps
    end
  end
end

class CreateJournalArticles < ActiveRecord::Migration
  def change
    create_table :journal_articles do |t|

      t.timestamps
    end
  end
end

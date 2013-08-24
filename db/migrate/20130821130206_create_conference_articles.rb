class CreateConferenceArticles < ActiveRecord::Migration
  def change
    create_table :conference_articles do |t|

      t.timestamps
    end
  end
end

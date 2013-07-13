class CreateExcerpts < ActiveRecord::Migration
  def change
    create_table :excerpts do |t|
      t.string :title
      t.text :excerpt

      t.timestamps
    end
  end
end

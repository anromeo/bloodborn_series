class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.text :information

      t.timestamps
    end
  end
end

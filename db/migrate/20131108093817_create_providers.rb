class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name,              :null => false, :default => ""
      t.text :description
      t.timestamps
    end
  end
end

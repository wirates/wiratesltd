class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :description
      t.string :meta_title
      t.string :meta_description
      t.string :meta_keyword

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end

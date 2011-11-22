class CreateRequestquotes < ActiveRecord::Migration
  def self.up
    create_table :requestquotes do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :project_type
      t.integer :approx_buget
      t.string :current_website
      t.string :numpage
      t.string :target_market
      t.text :project_desc
      
      t.timestamps
    end
  end

  def self.down
    drop_table :requestquotes
  end
end

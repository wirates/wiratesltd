class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :title
      t.text :body
      t.string :meta_title
      t.text :meta_keyword
      t.text :meta_desc

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end

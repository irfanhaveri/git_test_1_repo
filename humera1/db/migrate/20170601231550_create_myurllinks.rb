class CreateMyurllinks < ActiveRecord::Migration[5.1]
  def change
    create_table :myurllinks do |t|
      t.integer :myurl_id
      t.string :link

      t.timestamps
    end
  end
end

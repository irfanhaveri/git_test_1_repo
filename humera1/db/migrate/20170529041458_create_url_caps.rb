class CreateUrlCaps < ActiveRecord::Migration[5.1]
  def change
    create_table :url_caps do |t|

      t.timestamps
    end
  end
end

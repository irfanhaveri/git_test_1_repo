class CreateMyurls < ActiveRecord::Migration[5.1]
  def change
    create_table :myurls do |t|
      t.string :title

      t.timestamps
    end
  end
end

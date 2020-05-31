class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :content
      t.string :string

      t.timestamps
    end
  end
end

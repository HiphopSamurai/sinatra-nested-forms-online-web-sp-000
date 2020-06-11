class CreatePirates < ActiveRecord::Migration[6.0]
  def change
    create_table :pirates do |t|
      t.string :name
      t.string :height
      t.string :weight
    end
  end
end

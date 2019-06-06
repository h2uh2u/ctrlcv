class CreateClipboards < ActiveRecord::Migration[5.0]
  def change
    create_table :clipboards do |t|
      t.string :address
      t.text :text

      t.timestamps
    end
  end
end

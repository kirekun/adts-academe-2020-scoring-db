class CreateManages < ActiveRecord::Migration[6.0]
  def change
    create_table :manages do |t|
      t.string :deadline
      t.boolean :enable

      t.timestamps
    end
  end
end

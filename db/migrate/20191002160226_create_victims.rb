class CreateVictims < ActiveRecord::Migration[5.1]
  
  def up
    create_table :victims do |t|
      t.string :cin , :limit=>8
      t.string :first_name , :limit=>30
      t.string :last_name , :limit=>30
      t.string :problem , :limit=>20
      t.string :cause_of_death , :limit=>25
      t.date :date_of_death

      t.timestamps
    end
  end
  
  def down
    drop_table :victims
  end
  
end

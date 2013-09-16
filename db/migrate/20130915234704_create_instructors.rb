class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :proficiency
      t.string :rates

      t.timestamps
    end
  end
end

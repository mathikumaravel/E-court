class CreateCaseTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :case_types do |t|
      t.string :type_of_case

      t.timestamps
    end
  end
end

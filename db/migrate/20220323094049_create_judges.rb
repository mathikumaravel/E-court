class CreateJudges < ActiveRecord::Migration[6.1]
  def change
    create_table :judges do |t|
      t.string :judge_name

      t.timestamps
    end
  end
end

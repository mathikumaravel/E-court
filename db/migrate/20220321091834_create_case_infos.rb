class CreateCaseInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :case_infos do |t|
      t.string :case_category
      t.string :court_name
      t.string :judge_name
      t.string :registration_number
      t.string :case_stage
      t.string :petitioner_name
      t.string :petitioner_advocate
      t.string :respondent_name
      t.string :respondent_advocate
      t.date :business_on_date
      t.date :hearing_date
      t.string :purpose_of_hearing
      t.timestamps
    end
  end
end

class AddJudgeIdToCaseInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :case_infos, :judge_id, :integer
  end
end

class AddCaseTypeIdToCaseInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :case_infos, :case_type_id, :integer
  end
end

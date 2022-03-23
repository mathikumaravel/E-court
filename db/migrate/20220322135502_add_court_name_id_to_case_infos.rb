class AddCourtNameIdToCaseInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :case_infos, :court_name_id, :integer
  end
end

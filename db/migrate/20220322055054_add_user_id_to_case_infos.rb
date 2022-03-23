class AddUserIdToCaseInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :case_infos, :user_id, :integer
  end
end

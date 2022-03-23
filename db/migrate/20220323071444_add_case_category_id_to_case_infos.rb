class AddCaseCategoryIdToCaseInfos < ActiveRecord::Migration[6.1]
  def change
    add_column :case_infos, :case_category_id, :integer
  end
end

class CreateCourtNames < ActiveRecord::Migration[6.1]
  def change
    create_table :court_names do |t|
      t.string :court_name

      t.timestamps
    end
  end
end

class AddInaneValueColumnsToCaseLine < ActiveRecord::Migration[6.0]
  def change
    add_column :case_lines, :emergency_visit, :inane_fdoh_values
    add_column :case_lines, :hospitalized, :inane_fdoh_values
    add_column :case_lines, :contact, :inane_fdoh_values
    add_column :case_lines, :travel_related, :inane_fdoh_values
  end
end

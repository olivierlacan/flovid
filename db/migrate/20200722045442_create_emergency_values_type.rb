class CreateEmergencyValuesType < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE inane_fdoh_values AS ENUM (
        'no',
        'no_value',
        'not_available',
        'unknown',
        'yes'
      );
    SQL
  end

  def down
    execute <<-SQL
      DROP TYPE inane_fdoh_values;
    SQL
  end
end

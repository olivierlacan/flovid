class CreateJurisdictionType < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE jurisdiction AS ENUM ('resident', 'non_resident', 'resident_out_of_state');
    SQL
  end

  def down
    execute <<-SQL
      DROP TYPE jurisdiction;
    SQL
  end
end

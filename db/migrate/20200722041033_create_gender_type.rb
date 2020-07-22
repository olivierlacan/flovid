class CreateGenderType < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE TYPE gender AS ENUM ('male', 'female', 'unknown');
    SQL
  end

  def down
    execute <<-SQL
      DROP TYPE gender;
    SQL
  end
end

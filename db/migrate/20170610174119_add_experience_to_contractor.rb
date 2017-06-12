class AddExperienceToContractor < ActiveRecord::Migration[5.1]
  def change
    add_column :contractors, :experience, :string
  end
end

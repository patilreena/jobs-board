class RenameCompnyToCompany < ActiveRecord::Migration[5.1]
  def change
    rename_column :jobs, :compny, :company
  end
end

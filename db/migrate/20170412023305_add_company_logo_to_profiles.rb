class AddCompanyLogoToProfiles < ActiveRecord::Migration[5.0]
  def up
    add_attachment :profiles, :company_logo
  end

  def down
    remove_attachment :profiles, :company_logo
  end
end

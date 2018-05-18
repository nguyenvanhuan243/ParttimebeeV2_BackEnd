class Profile < ApplicationRecord
	#2 line code for upload image with paperclip
  has_attached_file :company_logo, styles: { medium: "40x40>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  # Explicitly do not validate
  do_not_validate_attachment_file_type :company_logo


  EMPLOYER_SIZE = {
      1   => '< 10 employees',
      2   => '10-50 employees',
      3   => '50-100 employees',
      4   => '> 100 employees',
      5   => ''
  }

end

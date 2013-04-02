maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures cass_e"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"


supports "ubuntu"

recipe "cass_e::install_httpd", "Installs the apache2 package on Ubuntu"
recipe "cass_e::setup_index_page", "Creates a custom index page from a Chef template"

attribute "cass_e/your_name",
  :display_name => "Your Name",
  :required => "required",
  :recipes => ["cass_e::setup_index_page"]



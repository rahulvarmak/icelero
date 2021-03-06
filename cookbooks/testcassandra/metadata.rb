maintainer       "Fission"
maintainer_email "rahul@fissionlabs.in"
license          "All rights reserved"
description      "Installs/Configures testcassandra"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"

recipe "testcassandra::config_edit","test"



attribute "testcassandra",
  :display_name => "General Config Options",
  :type => "hash"



# Required Input #
attribute "testcassandra/cluster_name",
   :display_name => "Cluster Name",
   :description => "Cluster Name",
   :required => "required",
   :recipes => ["testcassandra::config_edit"]



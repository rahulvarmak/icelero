maintainer       "fission"
maintainer_email "rahul@fissionlabs.in"
license          "All rights reserved"
description      "Installs/Configures cassandra"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"


recipe "cassandra::default","installs cassandra"
recipe "cassandra::cassandra_cluster_1","clusters cassandra"
recipe "cassandra::cassandra_install_1","installs cassandra"

# Required Input #
attribute "cassandra/cluster_name",
   :display_name => "cluster name ",
   :description => "cluster name",
   :required => "required",
   :recipes => ["cassandra::cassandra_cluster_1"]

# Required Input #
attribute "cassandra/seeds",
   :display_name => "seed node ip ",
   :description => "seed node ip",
   :required => "required",
   :recipes => ["cassandra::cassandra_cluster_1"]

# Required Input #
attribute "cassandra/private_ip",
   :display_name => "private ip ",
   :description => "private ip",
   :required => "required",
   :recipes => ["cassandra::cassandra_cluster_1"]

# Required Input #
attribute "cassandra/snitch",
   :display_name => "snitch name ",
   :description => "snitch name",
   :required => "required",
   :recipes => ["cassandra::cassandra_cluster_1"]










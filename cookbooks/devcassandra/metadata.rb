maintainer       "fission"
maintainer_email "rahul@fissionlabs.in"
license          "All rights reserved"
description      "Installs/Configures devcassandra"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"


recipe "devcassandra::default","installs cassandra"
recipe "devcassandra::default","installs cassandra"
recipe "devcassandra::default","installs cassandra"

# Required Input #
attribute "devcassandra/cluster_name",
   :display_name => "cluster name ",
   :description => "cluster name",
   :required => "required",
   :recipes => ["devcassandra::cassandra_cluster"]

# Required Input #
attribute "devcassandra/seeds",
   :display_name => "seed node ip ",
   :description => "seed node ip",
   :required => "required",
   :recipes => ["devcassandra::cassandra_cluster"]

# Required Input #
attribute "devcassandra/private_ip",
   :display_name => "private ip ",
   :description => "private ip",
   :required => "required",
   :recipes => ["devcassandra::cassandra_cluster"]

# Required Input #
attribute "devcassandra/snitch",
   :display_name => "snitch name ",
   :description => "snitch name",
   :required => "required",
   :recipes => ["devcassandra::cassandra_cluster"]














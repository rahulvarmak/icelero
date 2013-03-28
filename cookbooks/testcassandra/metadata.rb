maintainer       "Fission"
maintainer_email "rahul@fissionlabs.in"
license          "All rights reserved"
description      "Installs/Configures testcassandra"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "rightscale"

recipe "testcassandra::default","test"

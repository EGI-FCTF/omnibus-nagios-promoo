name "nagios-promoo"
default_version "0.0.1"

dependency "ruby"
dependency "rubygems"

build do
  gem "install nagios-promoo -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  delete "#{install_dir}/embedded/docs"
  delete "#{install_dir}/embedded/share/man"
  delete "#{install_dir}/embedded/share/doc"
  delete "#{install_dir}/embedded/ssl/man"
  delete "#{install_dir}/embedded/info"
end

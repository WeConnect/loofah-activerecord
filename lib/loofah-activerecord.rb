$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__))) unless $LOAD_PATH.include?(File.expand_path(File.dirname(__FILE__)))

require 'loofah'

module Loofah::ActiveRecord
  VERSION = "1.1.0"
end

if defined?(Rails) && Rails::VERSION::MAJOR == 3
  require 'loofah/activerecord/railtie'
else
  require 'loofah/activerecord/active_record'
  require 'loofah/activerecord/xss_foliate'
end

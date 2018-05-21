class ApplicationRecord < ActiveRecord::Base
  include Demoplugin::ActsAsDemoplugin
  self.abstract_class = true
end

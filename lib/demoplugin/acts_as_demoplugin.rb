module Demoplugin
  module ActsAsDemoplugin
    extend ActiveSupport::Concern
 
    included do
    end
     module ClassMethods
      def acts_as_demoplugin(options = {})
        cattr_accessor :demoplugin_text_field
        self.demoplugin_text_field = (options[:demoplugin_text_field] || :last_squawk).to_s
        
        include Demoplugin::ActsAsDemoplugin::LocalInstanceMethods
      end
    end
     module LocalInstanceMethods
      def squawk(string)
        write_attribute(self.class.demoplugin_text_field, string.to_squawk)
      end
    end
  end
end
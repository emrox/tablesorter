require 'tablesorter/view_helpers'
require 'tablesorter/active_record'

module Tablesorter
  class Railtie < Rails::Railtie

    initializer 'tablesorter.view_helpers' do
      ActionView::Base.send :include, ViewHelpers
    end

    initializer 'tablesorter.active_record' do
      ActionView::Base.extend ActiveRecord

      klasses = [::ActiveRecord::Relation]
      if defined? ::ActiveRecord::Associations::CollectionProxy
        klasses << ::ActiveRecord::Associations::CollectionProxy
      else
        klasses << ::ActiveRecord::Associations::AssociationCollection
      end

      klasses.each { |klass| klass.send(:include, ActiveRecord) }
    end
  end

end

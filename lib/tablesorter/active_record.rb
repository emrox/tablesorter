module Tablesorter
  module ActiveRecord
    def table_sort(sort_attr, dir, default_attr, default_dir)
      sort_attr ||= default_attr
      dir ||= default_attr
      self.order("#{sort_attr} #{dir}")
    end
  end
end

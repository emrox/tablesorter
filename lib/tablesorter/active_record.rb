module Tablesorter
  module ActiveRecord
    def table_sort(sort_attr, dir_attr, default_sort, default_dir)
      sort  = sort_attr.presence || default_sort
      dir   = dir_attr.presence  || default_dir
      self.order(sort => dir)
    end
  end
end

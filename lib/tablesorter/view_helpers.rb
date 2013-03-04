module Tablesorter
  module ViewHelpers
    def sortable_column_headings(columns, options={})

      current_sort = params[:sort]
      if current_sort.present?
        current_sort = current_sort.to_sym
      end

      current_dir = params[:dir]
      if current_dir.present?  
        current_dir = current_dir.to_sym
      end

      options.merge(params).reject! { |k| k == 'sort' }
      options.merge(params).reject! { |k| k == 'dir' }

      columns.inject('') do |acc, col|
        sym = col.to_sym
        dir = (current_sort==sym && current_dir==:asc) ? 'desc' : 'asc'
        title = I18n.t(('tablesorter.'+sym.to_s).to_sym, :default => sym.to_s.humanize)
        css_classes = []
        css_classes << 'selected' if current_sort==sym
        css_classes << dir.to_s if current_sort==sym

        acc + 
          '<th>' + 
          "<a #{css_class_attribute(css_classes)} href='?" +
          options.merge(sort:sym.to_s, dir:dir).to_query +
          "'>" +
          "#{title}<span></span></a>" +
          '</th>'
      end.html_safe
    end

    def css_class_attribute(css_classes)
      css_classes.present? ? "class='#{css_classes.join(' ')}'" : ''
    end
  end
end

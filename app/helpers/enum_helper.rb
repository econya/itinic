module EnumHelper
  def sym_to_s string
    return nil if string.nil?
    string.capitalize.to_s.gsub(/_/, ' ')
  end

  def enum_map enum
    enum.symbolize_keys.keys.map do |k|
      [sym_to_s(k), k]
    end.to_h
  end

  def render_stars value, values
    content_tag(:div) do
      if value.nil?
        values.length.times.each do |v|
          concat(fa_icon "star-o")
        end
      else
        values.each do |k,v|
          if v <= values[value]
            concat(fa_icon "star")
          elsif v > values[value]
            concat(fa_icon "star-o")
          end
        end
      end
    end
  end
end

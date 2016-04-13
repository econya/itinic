module EnumHelper
  def sym_to_s string
    string.capitalize.to_s.gsub(/_/, ' ')
  end

  def enum_map enum
    enum.symbolize_keys.keys.map do |k|
      [sym_to_s(k), k]
    end.to_h
  end
end

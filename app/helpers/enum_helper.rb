module EnumHelper
  def enum_map enum
    enum.symbolize_keys.keys.map do |k|
      [k.capitalize.to_s.gsub(/_/, " "), k]
    end.to_h
  end
end

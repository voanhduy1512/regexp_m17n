module RegexpM17N
  def self.non_empty?(str)
    str.encode(Encoding::BINARY) =~ Regexp.new('^.+$'.encode(Encoding::BINARY))
  end
end

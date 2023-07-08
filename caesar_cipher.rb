def caesar_cipher(str, shift)
  string_array = str.split('')

  string_array.map! do |elem|
    if /[[:upper:]]/.match(elem)
      elem = elem.ord + shift
      elem = ((elem%90)+64).chr if elem > 90
    elsif /[[:lower:]]/.match(elem)
      elem = elem.ord + shift
      elem = ((elem%122)+96).chr if elem > 122
    end
    elem.chr
  end
  string_array.join('')
end

# A-Z => [65..90]
# a-z => [97..122]
def is_valid(s)
  stack = []
  mapping = { ')' => '(', '}' => '{', ']' => '[' }
  s.each_char do |char|
    if mapping.key?(char)
      top_element = stack.empty? ? '#' : stack.pop
      return false if mapping[char] != top_element
    else
      stack.push(char)
    end
  end
  stack.empty?
end

# Example Usage:
puts is_valid("()[]{}") # Output: true

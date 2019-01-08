# https://www.codewars.com/kata/54a91a4883a7de5d7800009c/train/ruby

def increment_string2(input)
  index = (/[1-9]/ =~ input)
  index = input.length - 1 if !index && (input[-1] == '0')
  index ||= input.length
  text = input[0, index]
  num = input[index..-1].to_i + 1
  "#{text}#{num}"
end

def increment_string(input)
  index = input.length
  i = input.length - 1
  while i >= 0 && !(/[0-9]/ =~ input[i]).nil?
    index = i
    i -= 1
  end
  text = input[0...index]
  num = input[index..-1].to_i + 1
  num = num.to_s.rjust(input.length - index, '0')
  "#{text}#{num}"
end

p increment_string('foo'), 'foo1'
p increment_string('foobar001'), 'foobar002'
p increment_string('foobar1'), 'foobar2'
p increment_string('foobar00'), 'foobar01'
p increment_string('foobar99'), 'foobar100'
p increment_string(''), '1'

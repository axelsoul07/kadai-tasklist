(1..20).each do |number|
  Task.create(content: 'test content ' + number.to_s, status: 'test status ' + number.to_s)
end
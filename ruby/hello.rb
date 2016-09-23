line_count = 0
file = File.new('filereader.rb')
while (line = file.gets)
  line_count += 1
  puts "#{line_count}: #{line}"
end
file.close

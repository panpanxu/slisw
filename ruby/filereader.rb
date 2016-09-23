line_count = 0
File.open("hello.rb") do |file|
  file.each_line do |line|
    line_count += 1
    puts "#{line_count}: #{line}"
  end
end

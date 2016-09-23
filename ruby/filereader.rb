line_count = 0
File.open("hello.rb") do |file|
  file.each_line do |line|
    line_count += 1
    if /line/.match(line)
      puts "#{line_count}: #{line}"
    end
  end
end

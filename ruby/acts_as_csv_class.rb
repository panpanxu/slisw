class ActsAsCsvV1
  def read
    file = File.new(self.class.to_s.downcase + '.txt')
    @headers = file.gets.chomp.split(', ')
    file.each do |row|
      @result << row.chomp.split(', ')
    end
  end
  def headers
    @headers
  end
  def csv_contents
    @result
  end
  def initialize
    @result = []
    read
  end
end

class ActsAsCsv
  def self.acts_as_csv
    define_method "read" do
      file = File.new(self.class.to_s.downcase + '.txt')
      @headers = file.gets.chomp.split(', ')
      file.each do |row|
        @result << row.chomp.split(', ')
      end
    end
    define_method "headers" do
      @headers
    end
    define_method 'csv_contents' do
      @result
    end
    define_method 'initialize' do
      @result = []
      read
    end
  end
end

class RubyCsv < ActsAsCsv
end

m = RubyCsv.new
p m.headers
p m.csv_contents

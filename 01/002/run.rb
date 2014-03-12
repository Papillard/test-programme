require 'open3'

class MinitestRakeRunner
  attr_reader :stdout, :stderr

  ELEMENTS = %w(runs assertions failures errors skips)
  PATTERN = Regexp.new ELEMENTS.collect { |e| "(?<#{e}>\\d+) #{e}"}
                               .join(", ")

  def run
    stdin, @stdout, @stderr = Open3.popen3('rake')
    parse_output
  end

  private

  def parse_output
    @stdout.readlines.each do |line|
      result = PATTERN.match line
      return result if result
    end
  end
end



runner = MinitestRakeRunner.new
result = runner.run

MinitestRakeRunner::ELEMENTS.each do |element|
  puts "#{element}: #{result[element.to_sym]}"
end

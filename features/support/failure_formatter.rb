module Formatter

  class FailureFormatter

    def initialize(step_mother, io, options)
      @io = io
    end

    def before_features(features)
      File.delete(@io) if File.exists?(@io)
    end

    def scenario_name(keyword, name, file_colon_line, source_indent)
      @scenario = name
      @scenario_line_number = file_colon_line
    end

    def step_name(keyword, step_match, status, source_indent, background, file_colon_line)
      if status == :failed
        File.open(@io, 'a') do |f|
          f.puts " "
          f.puts "Something failed"
          step_name = step_match.format_args(lambda{|param| "*#{param}*"})
          f.puts step_name
          f.puts "we were in this scenario:"
          f.puts @scenario
          f.puts "which can be found at:"
          f.puts @scenario_line_number
        end
      end
    end

  end

end

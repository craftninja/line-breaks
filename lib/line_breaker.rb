class LineBreaker
  def initialize(max_line_length, text)
    @text = text
    @max_line_length = max_line_length
  end

  def output
    lines = []
    line = ""
    words = @text.split(" ")
    words.each do |word|
      if "#{line} #{word}".size < @max_line_length
        line += "#{word} "
      else
        lines << line
        line = "#{word} "
      end
    end
    lines << line
    output = ""
    lines.each do |line|
      output += "#{line.chomp(' ')}\n"
    end
    output
  end
end

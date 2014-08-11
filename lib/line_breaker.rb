class LineBreaker
  def initialize(max_line_length, text)
    @text = text
    @max_line_length = max_line_length
  end

  def output
    output = ""
    paragraphs = @text.split("\n")

    paragraphs.each do |paragraph|
      lines = []
      line = ""
      words = paragraph.split(" ")

      words.each do |word|
        if "#{line} #{word}".size < @max_line_length
          line += "#{word} "
        else
          lines << line
          line = "#{word} "
        end
      end

      lines << line

      lines.each do |line|
        output += "#{line.chomp(' ')}\n"
      end
    end
    output
  end
end

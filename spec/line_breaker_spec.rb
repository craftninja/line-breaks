require 'line_breaker'

describe 'LineBreaker' do

  it 'breaks lines up at 20 characters' do
    character_break_number = 20
    text = <<HEREDOC
Jean shorts you probably haven't heard of them farm-to-table.
HEREDOC
    expected = <<HEREDOC
Jean shorts you
probably haven't
heard of them
farm-to-table.
HEREDOC
    line_break_this = LineBreaker.new(character_break_number, text)
    actual = line_break_this.output
    expect(actual).to eq(expected)
  end

end

class Report
  attr_accessor :title,:text,:formatter
  def initialize(formatter)
    @title = "レポート"
    @text = "Test"
    @formatter = formatter
  end

  def output
    @formatter.output
  end
end

class Html
  def output
    #raise "Call"
    puts "Html"
  end
end

class Text
  def output
    #raise "Call"
    puts "Text"
  end
end

r = Report.new(Html.new)
r.output

r2 = Report.new(Text.new)
r2.output
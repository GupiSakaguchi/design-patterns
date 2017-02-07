class Report
  def initialize(&formatter)
    @formatter = formatter
  end

  def output
    @formatter.call
  end
end

html = lambda do
  puts "html"
end

text = lambda do
  puts "text"
end

r = Report.new &html
r.output

r2 = Report.new &text
r2.output
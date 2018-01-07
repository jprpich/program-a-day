class Printer

  attr_accessor :color, :size, :buttons, :papers_printed, :papers_scanned

  def initialize(color, size, buttons)
    @papers_printed = 0
    @papers_scanned = 0
    @color = color
    @size = size
    @buttons = buttons
  end 

  def print
    @papers_printed += 1
  end

  def scan
    @papers_scanned += 1
  end

end

# the hp printer
hp_printer = Printer.new("white", "45 inches", 10)

puts "Some info about the hp printer!"
puts "The printer is of #{hp_printer.color} color!"
puts "The printer is of size #{hp_printer.size}!" 
puts "The printer has #{hp_printer.buttons} buttons!"
puts "This printer has printed #{hp_printer.papers_printed} papers"
hp_printer.print
puts "This printer has printed #{hp_printer.papers_printed} papers"
hp_printer.print
puts "This printer has printed #{hp_printer.papers_printed} papers"

puts "*" * 50

# the sony printer
sony_printer = Printer.new("black", "34 inches", 234)

puts "Some info about the sony_printer!"
puts "The printer is of #{sony_printer.color} color!"
puts "The printer is of size #{sony_printer.size}!" 
puts "The printer has #{sony_printer.buttons} buttons!"
puts "This printer has printed #{sony_printer.papers_printed} papers"
puts "*" * 50

# the end of the program!
puts "So the hp printer has printed #{hp_printer.papers_printed} papers, while the sony printer has printed #{sony_printer.papers_printed} papers!"





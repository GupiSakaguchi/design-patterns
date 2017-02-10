class Computer
  attr_accessor :display
  attr_accessor :motherboard
  attr_accessor :drives

  def initialize(display= :crt,motherboard= Motherboard.new,drives= [])
    @motherboard = motherboard
    @drives = drives
    @display = display
  end
end

class CPU
end

class BasicCPU < CPU
end

class TurboCPU < CPU
end

class Motherboard
  attr_accessor :cpu
  attr_accessor :memory_size
  def initialize(cpu=BasicCPU.new,memory_size= 1000)
    @cpu = cpu
    @memory_size = memory_size
  end
end

class Drive
  attr_accessor :type
  attr_accessor :size
  attr_accessor :writable
  def initialize(type,size,writable)
    @type = type
    @size = size
    @writable = writable
  end
end

#directer
class ComputerBuilder
  attr_reader :computer

  def turbo(has_turbo_cpu=true)
    @computer.motherboard.cpu = TurboCPU.new
  end

  def memory_size=(size_in_mb)
    @computer.motherboard.memory_size = size_in_mb
  end
end

class DesktopBuilder < ComputerBuilder
  def initialize
    @computer = Computer.new
  end

  def display=(display)
    @computer.display = display
  end

  def add_cd(writer=false)
    @computer.drives << Drive.new(:cd,760,writer)
  end

  def add_dvd(writer=false)
    @computer.drives << Drive.new(:dvd,4000,writer)
  end

  def add_hard_disk(size_in_mb)
    @computer.drives << Drive.new(:hard_disk,size_in_mb,true)
  end

end

builder = DesktopBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(20000)




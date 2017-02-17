class Component
  attr_accessor :name
  def initialize(name,*size)
    @name = name
    @size = size
  end

  def get_size
    @size
  end
end

class FileComponent < Component
  def initialize(name,*size)
    super(name,*size)
  end
end

class DirectoryComponent < Component
  def initialize(name)
    super(name)
    @components = []
  end

  # def get_size
  #   @components.inject{|sum,f| sum + f.get_size}
  # end

  def add(component)
    @components << component
  end

  def remove(component)
    @components.delete(component)
  end

end

picture = DirectoryComponent.new("PICTURE")
picture.add(FileComponent.new("child.jpg",100))
picture.add(FileComponent.new("car.jpg",200))
picture.add(FileComponent.new("landscape.jpe",300))

usb = DirectoryComponent.new("UsbDevice")
usb.add(picture)

#picture.get_size
#usb.get_size




class Component
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class FileComponent < Component
  def initialize(name)
    super(name)
  end
end

class DirectoryComponent < Component
  def initialize(name)
    super(name)
    @components = []
  end

  def add(component)
    @components << component
  end

  def remove(component)
    @components.delete(component)
  end

end

picture = DirectoryComponent.new("PICTURE")
picture.add(FileComponent.new("child.jpg"))
picture.add(FileComponent.new("car.jpg"))
picture.add(FileComponent.new("landscape.jpe"))

usb = DirectoryComponent.new("UsbDevice")
usb.add(picture)

#picture.get_size
#usb.get_size




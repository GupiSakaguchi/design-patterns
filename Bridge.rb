#機能のクラス
class Animal
  def initialize(implementer)
    @implementer = implementer
  end

  def run
    @implementer.run
  end

  def eat
    @implementer.eat
  end

  def sleep
    @implementer.sleep
  end

end

# 改善した機能クラス
class Dog < Animal
end

class Cat < Animal
end

#実装のクラス(Implementer)
class AnimalImp
  def run
  end

  def eat
  end

  def sleep
  end
end


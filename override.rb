module Barking
  def hoge
    'hogehogehogehoge'
  end
end

class Book
  include Barking
  def title
    '本だよ！'
  end
end

class Magazine < Book
  def title
    '雑誌だよ！'
  end
end

magazine = Magazine.new
print(magazine.title)
print(magazine.hoge)
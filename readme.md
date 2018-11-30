# 現場rails メモ
``` ruby
class Child < Parent
```
で継承。ApplicationRecordとかそうだね。

```ruby
class Book
    def title
        '本だよ！'
    end
end

class Magazine < Book
    def title
        '雑誌だよ！'
    end
end    
```
```ruby
> magazine = Magazine.new
> print(magazine.title)   
>>> 雑誌だよ！ 
```

- 子のメソッドで上書き、これ`オーバーライド`


```ruby
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

>>> 雑誌だよ！hogehogehogehoge
```

- moduleは上に書く
- include Moduleで取り込み
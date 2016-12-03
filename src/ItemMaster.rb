#!/usr/bin/ruby
class ItemMaster
  def initialize(id)
    @Id = id
  end
  def Price
    @Id * 10
  end
  def Point
    @Id
  end

end

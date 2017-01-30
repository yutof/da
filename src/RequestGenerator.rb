#!/usr/bin/ruy
load 'Request.rb'

class RequestGenerator

  def initialize()
    @requests = GenerateRequests()
    @requests.each { |i| i.Dump() }
  end 

  def GenerateRequests()
    arr = Array.new 
    for i in 1..(CARD_REQUEST_DICT.keys.count)
      v = CARD_REQUEST_DICT["#{i}"]
      for j in 0..(v.count-1)
        for k in 1..v[j]
          arr.push(Request.new(i,j+1))
        end 
      end
    end
    arr.shuffle
  end

  def Generate()
    @requests.pop()
    #r = Request.new(GetRandomId(), GetRandomCount())
    #r
  end

  def GetRandomCount()
    r = rand(1..100)
    return 2 if r > 75
    1
  end
 
  def GetRandomId()
    r = rand(1..80)
    case r
    when 1..20
      1
    when 21..45
      2
    when 46..58
      3
    when 59..70
      4
    when 71..80
      5
    end 
  end

end

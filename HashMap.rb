class HashMap
  attr_reader :my_map

  def initialize
    @my_map = []
  end

  def hash(key)
    key.to_sym.object_id % 100
  end

  def insert(k,v)
    hash = hash k
    @my_map[hash] ||= []
    @my_map[hash] << [k,v]
  end

  def find_entry(k)
    hash = hash k

    # accounts for collision of /unique/ hash
    @my_map[hash].each do |k_v_pair|
      if k_v_pair[0] == k
        return k_v_pair[1]
      end
    end
  end
end



hm = HashMap.new
hm.insert('the cat goes', 'meow')
hm.find_entry('the cat goes')

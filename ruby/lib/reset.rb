# -*- ruby encoding: utf-8 -*-

class Reset
  VERSION = '1.0.0'

  attr_reader :set_hash
  
  def initialize(set_elements)
  	@set_hash ||= Hash.new(false)
  	set_elements.each do |s|
  		next if @set_hash.key?(s)
  		@set_hash[s] = true
  	end
  end

  def add element
    @set_hash[element] = true
    self
  end

  def remove_element element
    @set_hash.delete(element)
    self
  end

  def union compare_set
    check_comparator(compare_set)
    Reset.new(self.set_hash.merge(compare_set.set_hash).keys)
  end

  def intersection compare_set
    check_comparator(compare_set)
    Reset.new(self.set_hash.keys & compare_set.set_hash.keys)
  end

  def difference compare_set
    check_comparator(compare_set)
    Reset.new(self.set_hash.keys - compare_set.set_hash.keys)
  end

  def subset compare_set
    check_comparator(compare_set)
    self.set_hash.each do |k,v|
      next if compare_set.set_hash.key?(k)
      return false
    end
    true
  end

  def check_comparator compare_set
    unless compare_set.instance_of?(self.class)
      raise ArgumentError, "Value to compare must be of type Reset"
    end
  end
end

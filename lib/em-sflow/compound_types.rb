module EventMachine
  module SFlow
class IPAddr < BinData::Primitive
  array :octets, :type => :uint8, :initial_length => 4

  def set(val)
    ints = val.split(/\./).collect { |int| int.to_i }
    self.octets = ints
  end

  def get
    self.octets.collect { |octet| "%d" % octet }.join(".")
  end
end

class MacAddr < BinData::Primitive
  array :octets, :type => :uint8, :initial_length => 6

  def set(val)
    ints = val.split(/\./).collect { |int| int.to_i }
    self.octets = ints
  end

  def get
    self.octets.collect { |octet| "%02x" % octet }.join(":")
  end
end
end
end

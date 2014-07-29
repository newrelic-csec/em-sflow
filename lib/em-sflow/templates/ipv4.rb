module EventMachine
  module SFlow
class Ipv4 < BinData::Record
  endian :big

  bit4   :version, :asserted_value => 4
  bit4   :header_length
  uint8  :tos
  uint16 :total_length
  uint16 :ident
  bit3   :flags
  bit13  :frag_offset
  uint8  :ttl
  uint8  :protocol
  uint16 :checksum
  ip_addr :src_addr
  ip_addr :dest_addr
  string :options, :read_length => :options_length_in_bytes
  buffer :payload, :length => :payload_length_in_bytes do
    choice :payload, :selection => :protocol do
      icmp  1
      tcp   6
      udp   17
      rest  :default
    end
  end

  def header_length_in_bytes
    header_length * 4
  end

  def options_length_in_bytes
    header_length_in_bytes - options.rel_offset
  end

  def payload_length_in_bytes
    total_length - header_length_in_bytes
  end
end
end
end

module EventMachine
  module SFlow
class Ipv4_data < BinData::Record
  endian :big
  
  uint32  :ipv4_length
  uint32  :protocol
  ipv4    :source_address
  ipv4    :destination_address
  uint32  :l4_source_port
  uint32  :l4_destination_port
  uint32  :tcp_flags
  uint32  :tos

end
end
end

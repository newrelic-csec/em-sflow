module EventMachine
  module SFlow
class Tcp < BinData::Record
  endian :big

  uint16 :src_port
  uint16 :dst_port
  uint32 :seq
  uint32 :ack_seq
  bit4   :doff
  bit4   :res1
  bit2   :res2
  bit1   :urg
  bit1   :ack
  bit1   :psh
  bit1   :rst
  bit1   :syn
  bit1   :fin
  uint16 :window
  uint16 :checksum
  uint16 :urg_ptr
  string :options, :read_length => :options_length_in_bytes
  rest   :payload

  def options_length_in_bytes
    (doff - 5 ) * 4
  end
end
end
end

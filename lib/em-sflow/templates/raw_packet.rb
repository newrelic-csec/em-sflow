class RawPacket < BinData::Record
  endian  :big

  uint32  :header_protocol
  uint32  :frame_length
  uint32  :stripped
  uint32  :raw_header_length
  string  :payload, :length => lambda {raw_header_length + (  (4 - (raw_header_length % 4)) % 4)  }
  #string  :payload, :length => :raw_header_length, :byte_align => 4

  def decode_raw_header
    decoded_header = Ether.new
    decoded_header.read(payload)
  end

end

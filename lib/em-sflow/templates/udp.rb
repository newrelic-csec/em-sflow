class Udp < BinData::Record
  endian :big

  uint16 :src_port
  uint16 :dst_port
  uint16 :len
  uint16 :checksum
  rest   :payload

end

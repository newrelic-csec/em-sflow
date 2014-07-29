class Icmp < BinData::Record
  endian :big

  uint8 :type
  uint8 :code
  uint16 :checksum
  rest   :icmp_payload
end

class ExtendedRouterData < BinData::Record
  endian    :big

  uint32    :next_hop_address_type
  ip_addr   :next_hop
  uint32    :src_mask_length
  uint32    :dest_mask_length

end

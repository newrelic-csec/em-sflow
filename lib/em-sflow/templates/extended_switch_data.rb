class ExtendedSwitchData < BinData::Record
  endian      :big

  uint32      :src_vlan
  uint32      :src_priority
  uint32      :dst_vlan
  uint32      :dst_priority

end

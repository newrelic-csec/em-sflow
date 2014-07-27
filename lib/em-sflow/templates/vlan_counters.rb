class VlanCounters < BinData::Record
  endian :big
  uint32 :vlan_id
  uint64 :octets
  uint32 :ucastPkts
  uint32 :multicastPkts
  uint32 :broadcastPkts
  uint32 :discards
end

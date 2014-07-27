module EventMachine
  module SFlow
class ExtendedRouterData < BinData::Record
  endian      :big

  uint32      :some_random_thing
  ip_addr     :next_hop
  uint32      :src_mask_length
  uint32      :dest_mask_length
end
end
end


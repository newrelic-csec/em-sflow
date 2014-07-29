class EthernetCounters < BinData::Record
  endian :big

   uint32 :dot3StatsAlignmentErrors
   uint32 :dot3StatsFCSErrors
   uint32 :dot3StatsSingleCollisionFrames
   uint32 :dot3StatsMultipleCollisionFrames
   uint32 :dot3StatsSQETestErrors
   uint32 :dot3StatsDeferredTransmissions
   uint32 :dot3StatsLateCollisions
   uint32 :dot3StatsExcessiveCollisions
   uint32 :dot3StatsInternalMacTransmitErrors
   uint32 :dot3StatsCarrierSenseErrors
   uint32 :dot3StatsFrameTooLongs
   uint32 :dot3StatsInternalMacReceiveErrors
   uint32 :dot3StatsSymbolErrors

end

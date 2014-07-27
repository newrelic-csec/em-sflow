class IfCounters < BinData::Record
   endian :big
  
   uint32 :ifIndex
   uint32 :ifType
   uint64 :ifSpeed
   uint32 :ifDirection
   uint32 :ifStatus
   uint64 :ifInOctets
   uint32 :ifInUcastPkts
   uint32 :ifInMulticastPkts
   uint32 :ifInBroadcastPkts
   uint32 :ifInDiscards
   uint32 :ifInErrors
   uint32 :ifInUnknownProtos
   uint64 :ifOutOctets
   uint32 :ifOutUcastPkts
   uint32 :ifOutMulticastPkts
   uint32 :ifOutBroadcastPkts
   uint32 :ifOutDiscards
   uint32 :ifOutErrors
   uint32 :ifPromiscuousMode

end

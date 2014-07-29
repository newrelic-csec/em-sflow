class VgCounters < BinData::Record
  endian :big

  uint32 :dot12InHighPriorityFrames
  uint64 :dot12InHighPriorityOctets
  uint32 :dot12InNormPriorityFrames
  uint64 :dot12InNormPriorityOctets
  uint32 :dot12InIPMErrors
  uint32 :dot12InOversizeFrameErrors
  uint32 :dot12InDataErrors
  uint32 :dot12InNullAddressedFrames
  uint32 :dot12OutHighPriorityFrames
  uint64 :dot12OutHighPriorityOctets
  uint32 :dot12TransitionIntoTrainings
  uint64 :dot12HCInHighPriorityOctets
  uint64 :dot12HCInNormPriorityOctets
  uint64 :dot12HCOutHighPriorityOctets

end

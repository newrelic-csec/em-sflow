class CounterSample < BinData::Record
  endian :big
  uint32 :counter_length
  uint32    :sequence_number
  uint8     :sourceid_type
  uint24    :sourceid_index
  uint32    :counter_number
  counter_record_wrapper  :counter_recs_wrap, :initial_length => :counter_number
  #string      :length => :counter_length
end

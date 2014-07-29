class CounterSample < BinData::Record
  endian :big

  uint32          :counter_length
  uint32          :sequence_number
  uint8           :sourceid_type
  uint24          :sourceid_index
  uint32          :counter_number
  counter_records :counter_records, 
                    :initial_length => :counter_number
end

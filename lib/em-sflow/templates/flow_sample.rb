module EventMachine
  module SFlow
class FlowSample < BinData::Record
  endian :big
  uint32 :sample_length
  uint32 :sequence_number
  uint32 :source_id
  uint32 :sampling_rate
  uint32 :sample_pool
  uint32 :drops
  uint32 :input
  uint32 :output
  uint32 :num_flow_records
  flow_records  :flow_recs, :initial_length => :num_flow_records
end
end
end


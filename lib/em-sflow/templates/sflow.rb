module EventMachine
  module SFlow
class Sflow < BinData::Record
  endian :big
  uint32 :sflow_version
  uint32 :ip_version
  ip_addr :agent_address
  uint32 :sub_agent_id
  uint32 :sequence_number
  uint32 :uptime
  uint32 :num_samples
  array  :sflow_samples, :type => :sample_wrapper, :initial_length => :num_samples
end
end
end

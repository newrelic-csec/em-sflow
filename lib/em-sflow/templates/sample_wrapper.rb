class SampleWrapper < BinData::Record
  endian :big
  bit20 :smi_entity
  bit12 :sample_type
  choice :sample, :selection => :sample_type do
    flow_sample 1
    counter_sample 2
  end
end

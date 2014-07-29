class CounterRecordWrapper < BinData::Record
  endian :big

  bit20     :smi_entity
  bit12     :sflow_format
  choice    :counter_info, :selection => :sflow_format do
    if_counters            1
    ethernet_counters      2
    tokenring_counters     3
    vg_counters            4
    vlan_counters          5
  end 
end

class CounterRecords < BinData::Array
  counter_record_wrapper
end

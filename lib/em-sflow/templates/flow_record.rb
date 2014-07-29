class FlowRecord < BinData::Record
  endian :big
  bit20  :smi_entity
  bit12  :sflow_format
  uint32 :flow_record_length
  choice :flow_data, :selection => :sflow_format do
    raw_packet                  1
    ether                       2
    ipv4_data                   3
#    ipv6_data                   4
    extended_switch_data        1001
    extended_router_data        1002
#    extended_gateway_data       1003
#    extended_user_data          1004
#    extended_url_data           1005
#    extended_mpls_data          1006
#    extended_nat_data           1007
#    extended_mpls_tunnel_data   1008
#    extended_mpls_vc_data       1009
#    extended_mpls_fec_data      1010
#    extended_mpls_lvp_fec       1011
#    extended_vlan_tunnel_data   1012
#    rest                        :default
  end
end

class FlowRecords < BinData::Array
  flow_record
end

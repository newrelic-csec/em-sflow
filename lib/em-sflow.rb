require "em-sflow/version"

require "eventmachine"
require "ipaddr"
require "bindata"

require "em-sflow/collector"
require "em-sflow/datagram_handler"
require "em-sflow/compound_types"

require 'em-sflow/templates/tcp.rb'
require 'em-sflow/templates/udp.rb'
require 'em-sflow/templates/ipv4.rb'
require 'em-sflow/templates/ether.rb'
require 'em-sflow/templates/ipv4_data.rb'
require 'em-sflow/templates/extended_router_data.rb'
require 'em-sflow/templates/extended_switch_data.rb'
require 'em-sflow/templates/raw_packet.rb'
require 'em-sflow/templates/ethernet_counters.rb'
require 'em-sflow/templates/if_counters.rb'
require 'em-sflow/templates/tokenring_counters.rb'
require 'em-sflow/templates/vg_counters.rb'
require 'em-sflow/templates/vlan_counters.rb'
require 'em-sflow/templates/counter_record_wrapper.rb'
require 'em-sflow/templates/counter_sample.rb'
require 'em-sflow/templates/flow_record.rb'
require 'em-sflow/templates/flow_sample.rb'
require 'em-sflow/templates/sample_wrapper.rb'
require 'em-sflow/templates/sflow.rb'

module EventMachine
  module SFlow
    # Your code goes here...
  end
end

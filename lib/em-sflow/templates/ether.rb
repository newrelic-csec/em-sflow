module EventMachine
  module SFlow
  class Ether < BinData::Record
  hide :type_or_vlan, :original_ether_type
  IPV4 = 0x0800

  endian   :big
  mac_addr :dst
  mac_addr :src
  uint16   :type_or_vlan

  bit3     :vlan_pcp,            :onlyif => :has_vlan?
  bit1     :vlan_dei,            :onlyif => :has_vlan?
  bit12    :vlan_id,             :onlyif => :has_vlan?
  uint16   :original_ether_type, :onlyif => :has_vlan?

  choice   :payload, :selection => :ether_type do
    ipv4   IPV4
    rest   :default
  end

  def has_vlan?
    type_or_vlan == 0x8100
  end

  def ether_type
    if has_vlan?
      original_ether_type
    else
      type_or_vlan
    end
  end

end
end
end


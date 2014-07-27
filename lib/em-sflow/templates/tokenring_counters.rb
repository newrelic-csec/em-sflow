class TokenringCounters < BinData::Record
  endian :big

  uint32 :dot5StatsLineErrors
  uint32 :dot5StatsBurstErrors
  uint32 :dot5StatsACErrors
  uint32 :dot5StatsAbortTransErrors
  uint32 :dot5StatsInternalErrors
  uint32 :dot5StatsLostFrameErrors
  uint32 :dot5StatsReceiveCongestions
  uint32 :dot5StatsFrameCopiedErrors
  uint32 :dot5StatsTokenErrors
  uint32 :dot5StatsSoftErrors
  uint32 :dot5StatsHardErrors
  uint32 :dot5StatsSignalLoss
  uint32 :dot5StatsTransmitBeacons
  uint32 :dot5StatsRecoverys
  uint32 :dot5StatsLobeWires
  uint32 :dot5StatsRemoves
  uint32 :dot5StatsSingles
  uint32 :dot5StatsFreqErrors

end

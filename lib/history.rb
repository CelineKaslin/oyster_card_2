require_relative './status'
class History
  attr_reader :entry_station, :exit_station
  def initialize(status = Status.new)
    @status = status
    @entry_station = nil
    @exit_station = nil
  end
  def entry(entry_station)
    @entry_station = entry_station
  end


end

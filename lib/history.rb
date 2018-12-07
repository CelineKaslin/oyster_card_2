require_relative './status'

class History

  attr_reader :entry_station, :exit_station, :history

  def initialize(status = Status.new)
    @status = status
    @entry_station = nil
    @exit_station = nil
    @history = []
  end

  def entry(entry_station)
    @entry_station = entry_station
  end

  def exit(exit_station)
    @exit_station = exit_station
  end

  def save
    @history << {@entry_station => @exit_station}
  end

end

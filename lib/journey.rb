class Journey
  attr_reader :status
  MIN_FARE = 1
  PENALTY_FARE = 6
  
  def initialize
    @status = nil
    @entry = nil
    @exit = nil
  end

  def start(entry)
    @entry = entry
    @status = true
  end

  def finish(exit)
    @exit = exit
    @status = false
  end

  def fare
    in_use? ? PENALTY_FARE : MIN_FARE
  end

  def in_use?
    @entry != nil && @exit == nil && @status != nil
  end

end

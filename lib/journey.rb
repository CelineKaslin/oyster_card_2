class Journey
  attr_reader :status

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

  def in_use?
    @entry != nil && @exit == nil && @status != nil
  end

end

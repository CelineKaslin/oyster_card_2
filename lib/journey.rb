class Journey
  attr_reader :status

  def initialize
    @status = false
  end

  def start
    @status = true
  end

  def finish
    @status = false
  end

end

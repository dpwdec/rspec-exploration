class Caller
  def initialize(notifier)
    @notifier = notifier
  end

  def notify!
    puts @notifier.create("re-call", 12)
  end
  
  def reiterate!
    puts @notifier.profile("input", 20)
  end
end

class Notifier
  def create(name, times)
    # ...
  end
end
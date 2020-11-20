module Sleeps

  def go_to_sleep!
    @sleeping = true
  end

  def wake_up!
    @sleeping = false
  end

  def sleeping?
    @sleeping
  end

end

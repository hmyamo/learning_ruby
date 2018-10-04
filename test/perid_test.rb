require 'minitest/autorun'
require './lib/period'

class PeriodTest < Minitest::Test
  def test_period
    # assert Period
    period = Period.new(
      Time.local(2018, 10, 4, 15, 26),
      Time.local(2018, 10, 4, 17, 00)
    )
    assert_equal '15:26', period.get_start_time
    assert_equal '17:00', period.get_end_time
    assert_equal '94', period.delta_time_min.to_s
  end

  def test_period_reverse
    period = Period.new(
      Time.local(2018, 10, 4, 17, 00),
      Time.local(2018, 10, 4, 15, 26)
    )
    assert_equal '15:26', period.get_start_time
    assert_equal '17:00', period.get_end_time
    assert_equal '94', period.delta_time_min.to_s
  end
end

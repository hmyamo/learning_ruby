# スケジュールの期間を表すクラス
class Period
  def initialize(start_time, end_time)
    if (start_time <= end_time) then
      @start_time = start_time
      @end_time = end_time
    else
      @start_time = end_time
      @end_time = start_time
    end
  end

  def get_start_time
    @start_time.strftime("%H:%M")
  end

  def get_end_time
    @end_time.strftime("%H:%M")
  end

  def delta_time_min
    ((@end_time - @start_time) / 60).floor
  end
end

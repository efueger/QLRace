module ApplicationHelper
  def full_title(title = '')
    base_title = 'QLRace'
    title.empty? ? base_title : "#{title} | #{base_title}"
  end

  def time_string(ms)
    return '-' if ms == 2_147_483_647 || ms.nil? || ms == 0
    time = ms.to_i
    s, ms = time.divmod(1000)
    ms = ms.to_s.rjust(3, '0')
    return "#{s}.#{ms}" if s < 60
    time /= 1000
    m, s = time.divmod(60)
    s = s.to_s.rjust(2, '0')
    "#{m}:#{s}.#{ms}"
  end
end

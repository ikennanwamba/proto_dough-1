module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | ProtoDough"
    end
  end
end

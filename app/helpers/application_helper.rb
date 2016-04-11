module ApplicationHelper
  def current_controller
    params[:controller]
  end

  def in_controller?(controller_name)
    current_controller == controller_name
  end
end

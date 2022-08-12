class StoreDecorator < ApplicationDecorator
  delegate_all

  def business_hours
    "#{object.opening_hours.strftime( "%H:%M" )} - #{object.closing_hours.strftime( "%H:%M" )}"
  end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

end

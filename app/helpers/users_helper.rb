module UsersHelper
  def form_field_error_message(resource, field_sym)
    unless resource.errors[field_sym].empty?
      content_tag(:span) do
        "#{field_sym.to_s.titleize} #{resource.errors[field_sym].first}"
      end
    end
  end
end

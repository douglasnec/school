module ApplicationHelper
  # def remove_child_link(wattage, form)
  #  form.hidden_field(:_destroy) + link_to_function(wattage, "remove_fields(this)")
  # end

  #def add_child_link(wattage, form, method)
  #  fields = new_child_fields(form, method)
  #  link_to_function(wattage, h("insert_fields(this, \"#{method}\", \"#{escape_javascript(fields)}\")"))
  #end

  # def new_child_fields(form_builder, method, options = {})
  #  options[:object] ||= form_builder.object.class.reflect_on_association(method).klass.new
  #  options[:partial] ||= method.to_s.singularize
  #  options[:form_builder_local] ||= :form
  #  form_builder.fields_for(method, options[:object], :child_index => "new_#{method}") do |form|
  #    render(:partial => options[:partial], :locals => { options[:form_builder_local] => form })
  #  end
  # end
end
json.array!(@comparison_objects) do |comparison_object|
  json.extract! comparison_object, :id, :name, :icon, :color
  json.url comparison_object_url(comparison_object, format: :json)
end

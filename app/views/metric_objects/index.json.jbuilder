json.array!(@metric_objects) do |metric_object|
  json.extract! metric_object, :id, :value, :metric_id, :comparison_object_id
  json.url metric_object_url(metric_object, format: :json)
end

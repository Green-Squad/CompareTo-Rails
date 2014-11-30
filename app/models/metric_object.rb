class MetricObject < ActiveRecord::Base
  belongs_to :metric
  belongs_to :comparison_object
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Metric.delete_all
ComparisonObject.delete_all
MetricObject.delete_all

Metric.create(id: 1, name: 'Speed')
Metric.create(id: 2, name: 'Weight')
Metric.create(id: 3, name: 'Size')

ComparisonObject.create(id: 1, name: 'Bald Eagle', icon: 'twitter', color: 'black')
ComparisonObject.create(id: 2, name: 'Boeing 747', icon: 'plane', color: 'grey')
ComparisonObject.create(id: 3, name: 'Superman', icon: 'male', color: 'red')



# Seeding metric_object speed
MetricObject.create(metric_id: 1, comparison_object_id: 1, value: 99)           # Metric 1 = Speed, Object 1 = Bald Eagle
MetricObject.create(metric_id: 1, comparison_object_id: 2, value: 614)          # Metric 1 = Speed, Object 2 = Boeing 747
MetricObject.create(metric_id: 1, comparison_object_id: 3, value: 670616629)    # Metric 1 = Speed, Object 3 = Superman

# Seeding metric_object weight
MetricObject.create(metric_id: 2, comparison_object_id: 1, value: 13)           # Metric 2 = Weight, Object 1 = Bald Eagle
MetricObject.create(metric_id: 2, comparison_object_id: 2, value: 892450)       # Metric 2 = Weight, Object 2 = Boeing 747
MetricObject.create(metric_id: 2, comparison_object_id: 3, value: 235)          # Metric 2 = Weight, Object 3 = Superman

# Seeding metric_object size
MetricObject.create(metric_id: 3, comparison_object_id: 1, value: 7.08)         # Metric 2 = Size, Object 1 = Bald Eagle
MetricObject.create(metric_id: 3, comparison_object_id: 2, value: 231.1)        # Metric 2 = Size, Object 2 = Boeing 747
MetricObject.create(metric_id: 3, comparison_object_id: 3, value: 6.25)         # Metric 2 = Size, Object 2 = Superman
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
ComparisonObject.create(id: 4, name: 'One World Trade Center', icon: 'building', color: 'black')
ComparisonObject.create(id: 5, name: 'Space Shuttle', icon: 'space-shuttle', color: 'black')
ComparisonObject.create(id: 6, name: 'Futbol', icon: 'futbol-o', color: 'black')
ComparisonObject.create(id: 7, name: 'School Bus', icon: 'bus', color: 'yellow')
ComparisonObject.create(id: 8, name: 'F-16 Fighting Falcon', icon: 'fighter-jet', color: 'grey')
ComparisonObject.create(id: 9, name: 'The Moon', icon: 'moon-o', color: 'yellow')
ComparisonObject.create(id: 10, name: 'Light', icon: 'sun-o', color: 'yellow')
ComparisonObject.create(id: 11, name: 'Earth', icon: 'globe', color: 'blue')



# Seeding metric_object speed
MetricObject.create(metric_id: 1, comparison_object_id: 1, value: 99)           # Metric 1 = Speed, Object 1 = Bald Eagle
MetricObject.create(metric_id: 1, comparison_object_id: 2, value: 614)          # Metric 1 = Speed, Object 2 = Boeing 747
MetricObject.create(metric_id: 1, comparison_object_id: 3, value: 11184700000)  # Metric 1 = Speed, Object 3 = Superman
MetricObject.create(metric_id: 1, comparison_object_id: 5, value: 17500)        # Metric 1 = Speed, Object 5 = Space Shuttle
MetricObject.create(metric_id: 1, comparison_object_id: 6, value: 131)          # Metric 1 = Speed, Object 6 = Futbol
MetricObject.create(metric_id: 1, comparison_object_id: 7, value: 55)           # Metric 1 = Speed, Object 7 = School Bus
MetricObject.create(metric_id: 1, comparison_object_id: 8, value: 1320)         # Metric 1 = Speed, Object 8 = F-16 Fighting Falcon
MetricObject.create(metric_id: 1, comparison_object_id: 10, value: 670616629)   # Metric 1 = Speed, Object 10 = Light

# Seeding metric_object weight
MetricObject.create(metric_id: 2, comparison_object_id: 1, value: 13)           # Metric 2 = Weight, Object 1 = Bald Eagle
MetricObject.create(metric_id: 2, comparison_object_id: 2, value: 892450)       # Metric 2 = Weight, Object 2 = Boeing 747
MetricObject.create(metric_id: 2, comparison_object_id: 3, value: 235)          # Metric 2 = Weight, Object 3 = Superman
MetricObject.create(metric_id: 2, comparison_object_id: 5, value: 230000)       # Metric 2 = Weight, Object 5 = Space Shuttle
MetricObject.create(metric_id: 2, comparison_object_id: 6, value: 1)            # Metric 2 = Weight, Object 6 = Futball
MetricObject.create(metric_id: 2, comparison_object_id: 7, value: 36000)        # Metric 2 = Weight, Object 7 = School Bus
MetricObject.create(metric_id: 2, comparison_object_id: 8, value: 48000)        # Metric 2 = Weight, Object 8 = F-16 Fighting Falcon

# Seeding metric_object size
MetricObject.create(metric_id: 3, comparison_object_id: 1, value: 7.08)         # Metric 3 = Size, Object 1 = Bald Eagle
MetricObject.create(metric_id: 3, comparison_object_id: 2, value: 231.1)        # Metric 3 = Size, Object 2 = Boeing 747
MetricObject.create(metric_id: 3, comparison_object_id: 3, value: 6.25)         # Metric 3 = Size, Object 3 = Superman
MetricObject.create(metric_id: 3, comparison_object_id: 4, value: 1792)         # Metric 3 = Size, Object 4 = One World Trade Center
MetricObject.create(metric_id: 3, comparison_object_id: 5, value: 184.2)        # Metric 3 = Size, Object 5 = Space Shuttle
MetricObject.create(metric_id: 3, comparison_object_id: 6, value: 0.72)         # Metric 3 = Size, Object 6 = Futball
MetricObject.create(metric_id: 3, comparison_object_id: 7, value: 45)           # Metric 3 = Size, Object 7 = School Bus
MetricObject.create(metric_id: 3, comparison_object_id: 8, value: 49.4)         # Metric 3 = Size, Object 8 = F-16 Fighting Falcon
MetricObject.create(metric_id: 3, comparison_object_id: 9, value: 11400900)     # Metric 3 = Size, Object 9 = The Moon 
MetricObject.create(metric_id: 3, comparison_object_id: 11, value: 41851392)    # Metric 3 = Size, Object 11 = Earth 
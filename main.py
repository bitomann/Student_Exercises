from cohort import Cohort
from exercise import Exercise
from instructor import Instructor
from student import Student

# Create 4 exercises or more
daily_journal_one = Exercise("Daily Journal", "CSS")
chicken_monkey_js = Exercise("chickenMonkey", "JavaScript")
city_planner = Exercise("City Planner", "Python")
these_area_a_few_of_my_favorite_things = Exercise("These are a few of my favorite things", "JavaScript")
 
# Create 3 cohorts
c36 = Cohort("Day Cohort 36")
c37 = Cohort("Day Cohort 37")
c38 = Cohort("Day Cohort 38") 
e1 = Cohort("Evening Cohort 1")

# Create 4, or more, students and assign them to one of the cohorts.
bito = Student("Bito", "Mann", "bito@slack.com", c38)
erin = Student("Erin", "Polley", "erin@slack.com", c36)
jack = Student("Jack", "Parsons", "jack@slaxk.com", c38)
matt = Student("Matt", "Blagg", "matt@slack.com", e1)

# Create 3, or more, instructors and assign them to one of the cohorts.
andy = Instructor("Andy", "Collins", "heart_dog@slack.com", c38, "life")
bryan = Instructor("Bryan", "Nilson", "🤘@slack.com", c38, "metal")
jisie = Instructor("Jisie", "David", "jisie@slack.com", c36, "everything")

# Have each instructor assign 2 exercises to each of the students.

andy.assign_exercise(chicken_monkey_js, jack)
andy.assign_exercise(city_planner, jack)

andy.assign_exercise(these_area_a_few_of_my_favorite_things, erin)
andy.assign_exercise(daily_journal_one, erin)

bryan.assign_exercise(city_planner, matt)
bryan.assign_exercise(chicken_monkey_js, matt)

jisie.assign_exercise(daily_journal_one, bito)
jisie.assign_exercise(city_planner, bito)



from student import Student
from cohort import Cohort
from instructor import Instructor
from exercise import Exercise

# Create 4 exercises or more
daily_journal_one = Exercise("Daily Journal", "CSS")
chicken_monkey_js = Exercise("chickenMonkey", "JavaScript")
city_planner = Exercise("City Planner", "Python")
these_area_a_few_of_my_favorite_things = Exercise("These are a few of my favorite things", "JavaScript")


# Create 3 cohorts
c36 = Cohort("Day Cohort 36")
c37 = Cohort("Day Cohort 37")
c38 = Cohort("Day Cohort 38") 

# Create 4, or more, students and assign them to one of the cohorts.
bito = Student("Bito", "Mann")
erin = Student("Erin", "Polley")
jack = Student("Jack", "Parsons")
matt = Student("Matt", "Blagg")

c36.students.extend([bito, jack, matt])

# Create 3, or more, instructors and assign them to one of the cohorts.
andy = Instructor("Andy", "Collins")
bryan = Instructor("Bryan", "Nilson")
jisie = Instructor("Jisie", "David")

c38.instructors.extend([andy, bryan, jisie])
for instructor in c38.instructors:
    print(f"{instructor.first_name} {instructor.last_name}")

# Have each instructor assign 2 exercises to each of the students.

andy.assign_exercise(chicken_monkey_js, jack)
andy.assign_exercise(city_planner, jack)

andy.assign_exercise(these_area_a_few_of_my_favorite_things, erin)
andy.assign_exercise(daily_journal_one, erin)

bryan.assign_exercise(city_planner, matt)
bryan.assign_exercise(chicken_monkey_js, matt)

jisie.assign_exercise(daily_journal_one, bito)
jisie.assign_exercise(city_planner, bito)


# for student in dc36.students:
#     for exercise in student.current_exercises:
#         print(f"{student.first_name} has been assigned {exercise.name} in {exercise.language}")
#     print()

# Create a list of students. Add all of the student instances to it.
all_students = c38.students

# Create a list of exercises. Add all of the exercise instances to it.
all_exercises = [chicken_monkey_js, city_planner, daily_journal_one, these_area_a_few_of_my_favorite_things]

# Now, generate a report that displays which students are working on which exercises.

# format message
def message_maker(e_list):

    message = "is working on "
    if len(e_list) == 0:
        message = "is not currently working on any exercises"
    elif len(e_list) == 1:
        message += e_list[0].name
    elif len(e_list) == 2:
        message += f"{e_list[0].name} and {e_list[1].name}"
    else:
        i = 0 
        last = len(e_list) -1
        for exercise in e_list:
            if e_list.index(exercise) == 0:
                message += f"{exercise.name}"
            elif e_list.index(exercise) == last:
                message += f", and {exercise.name}"
            else:
                message += f", {exercise.name}"

    return message

# print report
for student in all_students:
    s_exercises = []
    for exercise in all_exercises:
        if exercise in student.current_exercises:
            s_exercises.append(exercise)
    print(f"{student.first_name} {student.last_name} {message_maker(s_exercises)}.")
    print()
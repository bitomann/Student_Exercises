from nss_person import NSSPerson

class Instructor(NSSPerson):
    def __init__(self, first_name, last_name):
        super().__init__(first_name, last_name)
        self.specialty = ""

    def assign_exercise(self, student, exercise):
        student.current_exercises.append(exercise)


# class Instructor:
#     def __init__(self, first_name, last_name, slack_handle, cohort, specialty):
#         self.first_name = first_name
#         self.last_name = last_name
#         self.slack_handle = slack_handle
#         self.cohort = cohort
#         self.specialty = specialty

#     def assign_exercise(self, exercise, student):
#         student.exercises.append(exercise)
#         print(f"Instructor: {self.first_name} \n Student {student .first_name} \n Assignment: {exercise.name}")
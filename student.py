from nss_person import NSSPerson

class Student(NSSPerson):
    def __init__(self, firstName, lastName):
        super().__init__(firstName, lastName)
        self.current_exercises = []


# class Student:

#     def __init__(self, first_name, last_name, slack_handle, cohort, *exercises):
#         self.first_name = first_name
#         self.last_name = last_name
#         self.slack_handle = slack_handle
#         self.cohort = cohort
#         self.exercises = list(exercises)
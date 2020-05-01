class Cohort():
    def __init__(self, name):
        self.name = name
        self.students = []
        self.slack_handle = ''
        self.current_exercises = []
        self.instructors = []
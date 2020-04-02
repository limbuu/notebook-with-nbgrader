c = get_config()
c.Exchange.course_id = "ai_course_id"
c.Exchange.root = "/tmp/exchange"
c.CourseDirectory.root = '/home/jovyan/ai-scholarship-program'
# ai-scholarship-program,if any changes occurs, COURSE_TO_HIDE variable must be changed in js/main.min.js
c.ExecutePreprocessor.timeout = -1


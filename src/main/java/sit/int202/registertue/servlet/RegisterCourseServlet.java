package sit.int202.registertue.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.registertue.models.CourseRegistered;
import sit.int202.registertue.models.CourseRepository;
import sit.int202.registertue.models.Semester;

import java.io.IOException;
import java.util.Map;

@WebServlet(name = "RegisterCourseServlet", value = "/register")
public class RegisterCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        Map<String, String[]> parameterMap = request.getParameterMap();
        int semester = Integer.valueOf(parameterMap.get("semester")[0]);
        HttpSession session = request.getSession();
        CourseRegistered courseRegistered = (CourseRegistered) session.getAttribute("courseRegistered");
        if (courseRegistered == null) {
            courseRegistered = new CourseRegistered();
            session.setAttribute("courseRegistered"
                    , courseRegistered);
        } else {
            courseRegistered.removeAllRegisteredCourse(semester);
        }
        for (String subjectId : parameterMap.get("registeredSubjects")) {
            courseRegistered.registerSubject(semester, CourseRepository.getSubject(semester, subjectId));
        }
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
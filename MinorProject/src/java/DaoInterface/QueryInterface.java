package DaoInterface;

public interface QueryInterface {
    String MatchLoginInfoSQL="select * from studentrecords.student where STUDENT_ID = ? and STUDENT_PASSWORD = ? ";
    String MatchStudentPersonalSQL="select * from student_personal where STUDENT_ID = ?";
    String MatchTeacherLoginInfoSQL="select * from teacher where TEACHER_ID = ? and TEACHER_PASSWORD = ? ";
    String FetchStudentDetailsSQL="select * from student where STUDENT_ID = ?";
    String FetchStudentSemSubjectsSQL="select * from subject where SEMESTER = ?";
}
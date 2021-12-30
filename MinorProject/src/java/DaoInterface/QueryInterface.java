package DaoInterface;

public interface QueryInterface {
    String MatchLoginInfoSQL="select * from practicalmca.student where STUDENT_ID = ? and STUDENT_PASSWORD = ? ";
    String MatchStudentPersonalSQL="select * from practicalmca.student_personal where STUDENT_ID = ?";
    String MatchTeacherLoginInfoSQL="select * from practicalmca.teacher where TEACHER_ID = ? and TEACHER_PASSWORD = ? ";
    String FetchStudentDetailsSQL="select * from practicalmca.student where STUDENT_ID = ?";
    String FetchStudentSemSubjectsSQL="select * from practicalmca.subject where SEMESTER = ?";
}
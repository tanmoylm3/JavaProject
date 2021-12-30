package DaoInterface;

public interface QueryInterface {
    String MatchLoginInfoSQL="select * from studentrecords.student where STUDENT_ID = ? and STUDENT_PASSWORD = ? ";
    String MatchStudentPersonalSQL="select * from studentrecords.student_personal where STUDENT_ID = ?";
    String FetchStudentDetailsSQL="select * from studentrecords.student where STUDENT_ID = ?";
    String FetchStudentSemSubjectsSQL="select * from studentrecords.subject where SEMESTER = ?";
}
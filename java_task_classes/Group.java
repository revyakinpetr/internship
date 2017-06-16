/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.ArrayList;
/**
 *
 * @author lenovo
 */
public class Group {

    ArrayList<Student> arrayListStudent = new ArrayList<>();

    public void setStudentToGroup(int sex, int mark) {
        this.arrayListStudent.add(new Student(sex, mark));
    }

    public ArrayList<Integer> getMarks() {
        ArrayList<Integer> marks = new ArrayList<>();
        if (this.arrayListStudent.size() == 0) {
            return null;
        } else {
            for (Student student : this.arrayListStudent) {
                marks.add(student.getMark());
            }
            return marks;
        }
    }


    public String getMarksString() {
        String marks = "";
        if (this.arrayListStudent.size() == 0) {
            return null;
        } else {
            for (Student student : this.arrayListStudent) {
                marks += student.getMark() + " ";
            }
            return marks;
        }
    }

    public ArrayList<Integer> getMarksBySex(int sex) {
        ArrayList<Integer> marks = new ArrayList<>();
        if (this.arrayListStudent.size() == 0) {
            return null;
        } else {
            for (Student student : this.arrayListStudent) {
                if (student.getSex() == sex)
                    marks.add(student.getMark());
            }
            if (marks.size() == 0) {
                return null;
            } else {
                return marks;
            }
        }
    }

    public String getMarksBySexString(int sex) {
        String marks = "";

        for (Student student : this.arrayListStudent) {
            if (student.getSex() == sex)
                marks += student.getMark() + " ";
        }

        return marks;
    }
}

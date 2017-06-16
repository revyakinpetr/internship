/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.ArrayList;
import java.util.Collection;
/**
 *
 * @author lenovo
 */
public class Main {
    
    

    public static void main(String[] args) {

        int numberOfSex = 1 + (int) (Math.random() * 5);
        ArrayList<Group> arrayListGroup = new ArrayList<>();

        for (int i = 0; i < numberOfSex; i++) {
            arrayListGroup.add(new Group());
            int a = 1 + (int) (Math.random() * 9);
            for (int j = 0; j < a; j++) {
                arrayListGroup.get(i).setStudentToGroup(1 + (int) (Math.random() * (numberOfSex - 1)), 2 + (int) (Math.random() * 3));
            }
        }

        int n = arrayListGroup.size();

        Collection<GroupPair> groupPairCollection = getAllGroups(arrayListGroup,numberOfSex);
        for (GroupPair groupPair : groupPairCollection){
            System.out.print("Пары групп " + groupPair.getNumberOfFirstListGroup() + " и " + groupPair.getNumberOfSecondListGroup());
            if (groupPair.getNumberOfSex() != 0)
                System.out.println(", пол групп " + groupPair.getNumberOfSex());
            else System.out.println();
            System.out.println(groupPair.getFirstList() + " and " + groupPair.getSecondList());
        }

//        getGroups(arrayListGroup);
//        for (int i = 0; i < n - 1; i++) {
//            for (int j = i + 1; j < n; j++) {
//                System.out.println("Пары групп " + i + " и " + j);
//                System.out.println(arrayListGroup.get(i).getMarks());
//                System.out.println(arrayListGroup.get(j).getMarks());
//            }
//        }

//        for (int k = 0; k < numberOfSex; k++) {
//            for (int i = 0; i < n - 1; i++) {
//                for (int j = i + 1; j < n; j++) {
//                    getGroupsBySex(arrayListGroup, k, i, j);
//                    if (!(arrayListGroup.get(i).getMarksBySex(k).equals("")) && !(arrayListGroup.get(j).getMarksBySex(k).equals(""))) {
//                        System.out.println("Пары " + k + " пола групп " + i + " и " + j);
//                        System.out.println(arrayListGroup.get(i).getMarksBySex(k));
//                        System.out.println(arrayListGroup.get(j).getMarksBySex(k));
//                    }
//                }
//            }
//        }
    }


    public static ArrayList<GroupPair> getAllGroups(ArrayList<Group> arrayListGroup, int numberOfSex) {
        ArrayList<GroupPair> groupPair = new ArrayList<>();
        int n = arrayListGroup.size();

        for (int i = 0; i < n - 1; i++) {
            for (int j = i + 1; j < n; j++) {
                if ((arrayListGroup.get(i).getMarks() != null) && (arrayListGroup.get(j).getMarks() != null)) {
                    groupPair.add(getGroupPair(arrayListGroup, i, j));
                }
            }
        }

        for (int k = 0; k < numberOfSex; k++) {
            for (int i = 0; i < n - 1; i++) {
                for (int j = i + 1; j < n; j++) {
                    if ((arrayListGroup.get(i).getMarksBySex(k) != null) && (arrayListGroup.get(j).getMarksBySex(k) != null)) {
                        groupPair.add(getGroupPairBySex(arrayListGroup, i, j, k));
                    }
                }
            }
        }
        return groupPair;
    }


    public static GroupPair getGroupPair(ArrayList<Group> arrayListGroup, int i, int j) {
        GroupPair groupPair = new GroupPair();

        groupPair.setFirstList(arrayListGroup.get(i).getMarks());
        groupPair.setNumberOfFirstListGroup(i+1);
        groupPair.setSecondList(arrayListGroup.get(j).getMarks());
        groupPair.setNumberOfSecondListGroup(j+1);

        return groupPair;
    }


    public static GroupPair getGroupPairBySex(ArrayList<Group> arrayListGroup, int i, int j, int sex) {
        GroupPair groupPair = new GroupPair();

        if ((arrayListGroup.get(i).getMarksBySex(sex) != null) && (arrayListGroup.get(j).getMarksBySex(sex) != null)) {
            groupPair.setFirstList(arrayListGroup.get(i).getMarksBySex(sex));
            groupPair.setNumberOfFirstListGroup(i+1);
            groupPair.setSecondList(arrayListGroup.get(j).getMarksBySex(sex));
            groupPair.setNumberOfSecondListGroup(j+1);
            groupPair.setNumberOfSex(sex);
        }

        return groupPair;
    }


    public static void getGroupsString(ArrayList<Group> arrayListGroup) {
        int n = arrayListGroup.size();
        for (int i = 0; i < n - 1; i++) {
            for (int j = i + 1; j < n; j++) {
                System.out.println("Пары групп " + i + " и " + j);
                System.out.println(arrayListGroup.get(i).getMarksString());
                System.out.println(arrayListGroup.get(j).getMarksString());
            }
        }
    }

    public static void getGroupsBySexSting(ArrayList<Group> arrayListGroup, int numberOfSex, int firstGroupNumber, int secondGroupNumber) {
        if (!(arrayListGroup.get(firstGroupNumber).getMarksBySexString(numberOfSex).equals("")) && !(arrayListGroup.get(secondGroupNumber).getMarksBySexString(numberOfSex).equals(""))) {
            System.out.println("Пары " + numberOfSex + " пола групп " + firstGroupNumber + " и " + secondGroupNumber);
            System.out.println(arrayListGroup.get(firstGroupNumber).getMarksBySexString(numberOfSex));
            System.out.println(arrayListGroup.get(secondGroupNumber).getMarksBySexString(numberOfSex));
        }

    }
}

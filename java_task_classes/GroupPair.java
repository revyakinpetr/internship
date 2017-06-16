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
public class GroupPair {

    private int numberOfFirstListGroup;
    private int numberOfSecondListGroup;
    private int numberOfSex = 0;
    private ArrayList<Integer> firstList;
    private ArrayList<Integer> secondList;


    public int getNumberOfFirstListGroup() {
        return numberOfFirstListGroup;
    }

    public void setNumberOfFirstListGroup(int numberOfFirstListGroup) {
        this.numberOfFirstListGroup = numberOfFirstListGroup;
    }

    public int getNumberOfSecondListGroup() {
        return numberOfSecondListGroup;
    }

    public void setNumberOfSecondListGroup(int numberOfSecondListGroup) {
        this.numberOfSecondListGroup = numberOfSecondListGroup;
    }

    public int getNumberOfSex() {
        return numberOfSex;
    }

    public void setNumberOfSex(int numberOfSex) {
        this.numberOfSex = numberOfSex;
    }

    public ArrayList<Integer> getFirstList() {
        return firstList;
    }

    public void setIntegerToFirstList(Integer integer) {
        this.firstList.add(integer);
    }

    public void setFirstList(ArrayList<Integer> firstList) {
        this.firstList = firstList;
    }

    public ArrayList<Integer> getSecondList() {
        return secondList;
    }

    public void setIntegerToSecondList(Integer integer) {
        this.secondList.add(integer);
    }

    public void setSecondList(ArrayList<Integer> secondList) {
        this.secondList = secondList;

    }
}

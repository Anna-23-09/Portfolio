package Java;

import java.util.ArrayList;
import java.util.Random;

//Задан целочисленный список ArrayList. Найти минимальное, максимальное и среднее из этого списка.

public class task1 {
    public static void main(String[] args) {
        Random rnd = new Random();
        ArrayList<Integer> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            list.add(rnd.nextInt(100));
        }
        System.out.println(list);        

        for (Integer j : list) {
            int max = 0;
            int min = 100;
            if (j < min) {
                min = j;
            }
            if (j > max) {
                max = j;
            }
        System.out.println("max = " + max);
        System.out.println("min = " + min);
        }     
    }
    
}
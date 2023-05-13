// На числовой прямой даны 2 отрезка, заданных парами чисел: [a1, b1] и [a2, b2].
// Напишите программу, которая находит их пересечение

import java.util.Scanner;

class task2 {
	public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a1 = sc.nextInt(), b1 = sc.nextInt();
        int a2 = sc.nextInt(), b2 = sc.nextInt();
        
        if ((b1 < a2) || (b2 < a1)) {
       System.out.print ("Пересечения нет");

 } else if (b2 > b1) { 

       if ((a1 < a2) && (b1 > a2)) {
           System.out.print (a2 + " " + b1); } else if ((a2 < a1) || (a1 == a2)) {
           System.out.print (a1 + " " + b1); } else if (b1 == a2)  {
           System.out.print (b1); }
} else if (b1 > b2) {
       if ((a1 < a2) || (a1 == a2)) {
           System.out.print (a2 + " " + b2); } else if ((a2 < a1) && (b2 > a1)) {
           System.out.print (a1 + " " + b2); } else if (b2 == a1) {
           System.out.print (a1); }

 } else if (b2 == b1) {
       if ((a2 == a1) || (a1 > a2)) {
           System.out.print (a1 + " " + b1); } else if (a2 > a1) {
           System.out.print (a2 + " " + b1); }
   }
    sc.close();
  }
}     





import java.util.Scanner;

public class class1224 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scanner = new Scanner(System.in);
		int input = scanner.nextInt();
		
		class1224 gugu = new class1224();
		gugu.gugudan(input);
	}
	
	public void gugudan(int i) {
		for(int j = 1; j < 10; j++) {
			System.out.println(i + " * " + j + " = "  + i * j);
		}
	}

}

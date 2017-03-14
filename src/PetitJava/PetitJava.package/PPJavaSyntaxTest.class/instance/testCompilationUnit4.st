testing
testCompilationUnit4

	self parse: '
					public class OddEven {
 						private int input;
 					  public static void main(String[] args) {
     					OddEven number = new OddEven();
					        number.showDialog(); }
					public void showDialog() {
       
        try {
          
            input = Integer.parseInt(JOptionPane.showInputDialog("Please Enter A Number"));
            calculate();
        } catch (NumberFormatException e) {
            
            System.err.println("ERROR: Invalid input. Please type in a numerical value.");
        }
    }

private void calculate() {
        if (input % 2 == 0) {
            System.out.println("Even");
        } else {
            System.out.println("Odd");
        }
    }
					}'
	rule: #compilationUnit
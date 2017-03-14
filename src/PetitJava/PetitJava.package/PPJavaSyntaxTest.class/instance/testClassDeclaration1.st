testing-classes
testClassDeclaration1

	self parse: '//comment
	class myfirstjavaprog
{  
        public static void main(String args[])
        {
           System.out.println("Hello World!");
        }
}'
	rule: #classDeclaration
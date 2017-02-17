testing
testCompilationUnit3

	self parse: 'class myfirstjavaprog
{  
        public static void main(String args[])
        {
           System.out.println("Hello World!");
        }
}'
	rule: #compilationUnit
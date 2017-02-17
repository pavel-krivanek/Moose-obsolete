testing
testCompilationUnit5

	self parse: 'class myfirstjavaprog
{  

		public myfirstjavaprog() {
			
		}
	
        public static void main(String args[])
        {
           System.out.println("Hello World!");
        }
}'
	rule: #compilationUnit
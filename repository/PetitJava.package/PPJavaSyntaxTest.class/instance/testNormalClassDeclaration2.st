testing-classes
testNormalClassDeclaration2

	self parse: 'class MyClass {  
		  {  
		     // I am an initializer
		  }
	
        public void foo()
        {
           System.out.println("Hello World!");
        }
}'
	rule: #normalClassDeclaration
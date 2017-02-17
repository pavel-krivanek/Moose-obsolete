testing-classes
testNormalClassDeclaration1

	self parse: 'class MyClass {  
        public void foo()
        {
           System.out.println("Hello World!");
        }
}'
	rule: #normalClassDeclaration
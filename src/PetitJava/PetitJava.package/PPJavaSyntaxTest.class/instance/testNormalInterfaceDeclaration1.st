testing-classes
testNormalInterfaceDeclaration1

	self parse: 'interface MyInterface {  
        public void foo();
}'
	rule: #normalInterfaceDeclaration
testing
testCompilationUnit2

	self parse: 'package foo;
				import foo.Bar;
				public class CU2 {
				}'
	rule: #compilationUnit
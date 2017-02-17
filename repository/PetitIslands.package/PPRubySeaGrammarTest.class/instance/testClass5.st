as yet unclassified
testClass5
	self parse: '
	class Foo 
		def bar()
			new("with a very
				/* and comment */ cool string over multiple lines")
		end
		
		def baz
			yet "another" string
		end
		
		def bag
		end
	end'.
	self assert: result size = 3.
	self assert: result first = '::Foo.bar'.
	self assert: result second = '::Foo.baz'.	
	self assert: result third = '::Foo.bag'
as yet unclassified
testDanglingEnd1
	self parse: '
	class Foo 
		def bar
		end
		
		a if b
		
		def baz
		end
	end'.

	self assert: result size = 2.
	self assert: result first = '::Foo.bar'.
	self assert: result second = '::Foo.baz'.
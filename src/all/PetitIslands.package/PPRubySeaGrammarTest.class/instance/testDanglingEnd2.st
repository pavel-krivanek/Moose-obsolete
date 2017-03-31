as yet unclassified
testDanglingEnd2
	self parse: '
	class Foo 
		def bar
		end
		
		if a then  b else c end
		
		def self.baz
		end
	end'.

	self assert: result size = 2.
	self assert: result first = '::Foo.bar'.
	self assert: result second = '::Foo.self.baz'.
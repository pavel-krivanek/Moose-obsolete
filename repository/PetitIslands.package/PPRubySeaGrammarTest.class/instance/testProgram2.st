as yet unclassified
testProgram2
	self parse: '
	class Foo 
		def bar
		end
		
		def self.baz
		end
	end'.
	self assert: result size = 2.
	self assert: result first = '::Foo.bar'.
	self assert: result second = '::Foo.self.baz'.	
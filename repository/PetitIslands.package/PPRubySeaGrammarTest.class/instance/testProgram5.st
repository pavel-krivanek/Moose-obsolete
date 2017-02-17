as yet unclassified
testProgram5
	self parse: '
	class Foo 
		def bar
		end
	end
	
	def baz
	end
	'.

	self assert: result first = '::Foo.bar'.
	self assert: result second = '.baz'.
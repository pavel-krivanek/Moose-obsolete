as yet unclassified
testModule
	self parse: '
	module Foo 
		def bar
		end
	end'.
	self assert: result size = 1.
	self assert: result first = '::Foo.bar'.
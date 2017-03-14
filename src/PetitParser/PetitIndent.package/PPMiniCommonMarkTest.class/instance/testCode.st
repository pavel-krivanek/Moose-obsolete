test-code
testCode
	self parse: '    abc' rule: #code.
	self assert: result = '<code>abc
</code>'.
	
	self parse: '    abc
     def' rule: #code.
	self assert: result = '<code>abc
 def
</code>'.

   self parse: '    this is a
     code' rule: #code.
	self assert: result = '<code>this is a
 code
</code>'.

   self parse: '     this is

    a code' rule: #code.
	self assert: result = '<code> this is

a code
</code>'.

   self parse: '     this is

    a code
' rule: #code.
	self assert: result = '<code> this is

a code
</code>'.


	

	self parse: '    chunk1

    chunk2
  
 
 
    chunk3' rule: #code.

	self assert: result = '<code>chunk1

chunk2



chunk3
</code>'.

   self parse: '    chunk1
      
      chunk2' rule: #code.
	self assert: result = '<code>chunk1
  
  chunk2
</code>'.
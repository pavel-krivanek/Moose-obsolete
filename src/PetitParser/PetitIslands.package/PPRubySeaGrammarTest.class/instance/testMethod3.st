as yet unclassified
testMethod3
	self parse: 'def suspend_record
    					UserHistory.for(a).order(''id DESC'').first
  					 end' rule: #methodDef.

	self assert: result size = 1.
	self assert: result first = '.suspend_record'.

testing
testNormalize
	"
	self debug: #testNormalize
	"
	
	self assert: (#($a $b) hasEqualElements: (cc normalize: #($a $b) asOrderedCollection)).
	self assert: (#($a $b) hasEqualElements: (cc normalize: #($b $a) asOrderedCollection)).
	self assert: (#($b $c $d) hasEqualElements: (cc normalize: #($c $d $b) asOrderedCollection)).	
	self assert: (#($a $e $b $f $d) hasEqualElements: (cc normalize: #($e $b $f $d $a) asOrderedCollection)).	

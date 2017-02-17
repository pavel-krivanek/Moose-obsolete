grammar-characters
characterSetClass
	^ [ :stream | stream position ] asParser , '[:' asParser , #word asParser star flatten , ':]' asParser map: [ :pos :open :class :close | 
		ClassMap at: class ifAbsent: [ PPFailure message: 'Invalid character class [:' , class , ':]' context: nil at: pos ] ]
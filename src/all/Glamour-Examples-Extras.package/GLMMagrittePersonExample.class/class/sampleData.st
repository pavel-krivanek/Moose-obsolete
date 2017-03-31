examples-utils
sampleData
	"self new magritteAddressBook openOn: self new magritteAddressBookModel "
	SampleData ifNil: 
	[
		SampleData := GLMAnnouncingCollection new.
		SampleData add: (GLMMagrittePersonExample new name: 'William Shakespeare' ; address: 'Stratford-upon-Avon' ).
		SampleData add: (GLMMagrittePersonExample new name: 'Victor Hugo' ; address: 'Besançon' ).
		SampleData add: (GLMMagrittePersonExample new name: 'Mark Twain' ; address: 'Florida' ).
		SampleData add: (GLMMagrittePersonExample new name: 'Banjo Paterson' ; address: 'Narrambla' ).
	].
	^SampleData
	

private
stringForPackages: aSetOfPackagesAndrepositories

	^ String streamContents: [:str |
		aSetOfPackagesAndrepositories do: [ :assoc |
			str
				nextPutAll: '*'; 
				nextPutAll: assoc key name;
				nextPutAll: ' => ';
				nextPutAll: assoc value description;
				cr ]
		]

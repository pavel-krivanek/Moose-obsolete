accessing
sampleMetaMse
	^ '("Meta-model of above file"
   (FM3.Package
       (name ''LIB'')
       (classes
           (FM3.Class
               (name ''Library'')
               (attributes
                   (FM3.Property
                       (name ''librarian'')
                       (type (ref: 2)))
                   (FM3.Property
                       (name ''books'')
                       (multivalued true)
                       (type (ref: 1)))))
           (FM3.Class (id: 1)
               (name ''Book'')
               (attributes
                   (FM3.Property
                       (name ''title'')
                       (type (ref: String)))
                   (FM3.Property (id: 100)
                       (name ''authors'')
                       (multivalued true)
                       (type (ref: 2)))))
           (FM3.Class (id: 2)
               (name ''Person'')
               (attributes
                   (FM3.Property
				(opposite (ref: 100))
				(name ''books'')
                       (multivalued true)
                       (type (ref: 1)))
                   (FM3.Property
                       (name ''name'')
                       (type (ref: String))))))))'
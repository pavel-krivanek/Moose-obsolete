accessing
sampleMse
	^ '("Sample MSE file"
   (LIB.Library
       (librarian
           (LIB.Person
               (name ''Adrian Kuhn'')))
       (books
           (LIB.Book
               (title ''Design Patterns'')
               (authors (ref: 1) (ref: 2) (ref: 3) (ref: 4)))
           (LIB.Book
               (title ''Eclipse: Principles, Patterns, and Plug-Ins'')
               (authors (ref: 1) (ref: 5)))
           (LIB.Book
               (title ''Smalltalk Best Practice Patterns'')
               (authors (ref: 5)))))
   (LIB.Person (id: 1)
       (name ''Erich Gamma''))
   (LIB.Person (id: 2)
       (name ''Richard Helm''))
   (LIB.Person(id: 3)
       (name ''Ralph Johnson''))
   (LIB.Person(id: 4)
       (name ''John Vlissides''))
   (LIB.Person(id: 5)
       (name ''Kent Beck'')))'
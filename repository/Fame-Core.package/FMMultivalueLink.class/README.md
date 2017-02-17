A FMMultivalueLink is an implementation for relationships that upate the backlink and
updates the opposite link in a one to many way.

Imagine that we want to have a Book with Sections

Book
    sections

Book>>initialize

	...
	sections := FMMultivalueLink on: self opposite: #book: 

means that sections is a kind of Collection in which when a new element is added
the message book: with self is sent.

This means each time a new element is added the backlink is managed automatically.

Now when the book of a Section is changed, 

Section>>book: aBook
	book := FMMultivalueLink on: self
					update: #sections
					from: self book
					to: aBook
					
This message make sure that if a book is changed, the sections
that refers to it are updated accordingly.


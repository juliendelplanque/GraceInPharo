adding
add: aVariable withName: aString
	aVariable isMethod ifTrue: [ self structuralError: 'Sorry, you can''t declare a method immediately inside a method'].
	^ super add: aVariable withName: aString
generated
scan35X3
	self recordMatch: #(44).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(44).
			self step.
			currentCharacter == $\
				ifTrue: [ ^ self scan37 ].
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(18 44).
					self step.
					currentCharacter == $\
						ifTrue: [ ^ self scan37 ].
					((currentCharacter between: Character space and: $!)
						or: [ (currentCharacter between: $# and: $[)
								or: [ (currentCharacter between: $] and: $z)
										or: [ currentCharacter >= $| ] ] ])
						ifTrue: [ ^ self scan36 ].
					^ self reportLastMatch ].
			((currentCharacter between: Character space and: $!)
				or: [ (currentCharacter between: $# and: $[)
						or: [ (currentCharacter between: $] and: $e)
								or: [ (currentCharacter between: $g and: $z)
										or: [ currentCharacter >= $| ] ] ] ])
				ifTrue: [ ^ self scan36 ].
			^ self reportLastMatch ].
	currentCharacter == $i
		ifTrue:
			[ ^ self scan35X3X1 ].
	((currentCharacter between: Character space and: $!)
		or: [ (currentCharacter between: $# and: $[)
				or: [ (currentCharacter between: $] and: $d)
						or: [ (currentCharacter between: $f and: $h)
								or: [ (currentCharacter between: $j and: $z)
										or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch
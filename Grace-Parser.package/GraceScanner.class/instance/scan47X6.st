generated
scan47X6
	self recordMatch: #(45).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan47X6X1 ].
	(currentCharacter <= $o
		or: [ (currentCharacter between: $q and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(45).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch
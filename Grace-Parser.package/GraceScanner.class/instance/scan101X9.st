generated
scan101X9
	[ self recordMatch: #(44 45).
	self step.
	currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
	(currentCharacter <= Character arrowDown
		or: [ (currentCharacter between: $! and: (Character value: 159))
				or: [ (currentCharacter
						between: (Character value: 161)
						and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch
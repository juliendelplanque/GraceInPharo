generated
scan101X11
	self recordMatch: #(33 44).
	self step.
	currentCharacter == $[
		ifTrue: [ ^ self scan112 ].
	(currentCharacter <= $Z
		or: [ (currentCharacter between: $\ and: (Character value: 8249))
				or: [ currentCharacter >= (Character value: 8251) ] ])
		ifTrue: [ [ self recordMatch: #(44).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch
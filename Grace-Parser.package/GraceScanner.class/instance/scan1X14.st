generated
scan1X14
	self recordMatch: #(47).
	self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ [ self recordMatch: #(47).
			self step.
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue ].
	^ self reportLastMatch
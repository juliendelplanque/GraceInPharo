generated
scan1X14
	self recordMatch: #(48).
	self step.
	(currentCharacter == Character lf
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ [ self recordMatch: #(48).
			self step.
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue ].
	^ self reportLastMatch
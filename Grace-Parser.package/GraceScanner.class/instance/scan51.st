generated
scan51
	self recordMatch: #(45).
	self step.
	currentCharacter == $b
		ifTrue:
			[ ^ self scan51X2 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan51X3 ].
	currentCharacter == $v
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $e
				ifTrue:
					[ ^ self scan51X1 ].
			(currentCharacter <= $d
				or: [ (currentCharacter between: $f and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ])
				ifTrue: [ [ self recordMatch: #(45).
					self step.
					currentCharacter ~~ (Character value: 8250) ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $a
		or: [ (currentCharacter between: $c and: $t)
				or: [ (currentCharacter between: $w and: (Character value: 8249))
						or: [ currentCharacter >= (Character value: 8251) ] ] ])
		ifTrue: [ [ self recordMatch: #(45).
			self step.
			currentCharacter ~~ (Character value: 8250) ] whileTrue ].
	^ self reportLastMatch
generated
scan21X1
	self recordMatch: #(53).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan21X1X1 ].
	currentCharacter == $u
		ifTrue: [ self recordMatch: #(53).
			self step.
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(39 53).
					self step.
					(currentCharacter == $'
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $a and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
						ifTrue: [ [ self recordMatch: #(53).
							self step.
							currentCharacter == $'
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
								whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $d)
												or: [ (currentCharacter between: $f and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
				ifTrue: [ [ self recordMatch: #(53).
					self step.
					currentCharacter == $'
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $a and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $t)
										or: [ (currentCharacter between: $v and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(53).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
Class {
	#name : #CSSValueTypeOneOrMoreOf,
	#superclass : #CSSValueTypeConstraint,
	#category : #'HTML-CSS'
}

{ #category : #accessing }
CSSValueTypeOneOrMoreOf class >> type [

	^$+
]

{ #category : #'as yet unclassified' }
CSSValueTypeOneOrMoreOf >> addValues: aCollection fromStream: in [

	| one pos |
	one := false.
	[
		pos := in position.
		type addValues: aCollection fromStream: in
	] whileTrue: [one := true].
	in position: pos.
	^one
]

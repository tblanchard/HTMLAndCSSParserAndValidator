Class {
	#name : #CSSNodeAttributeStyleRule,
	#superclass : #CSSStyleRule,
	#instVars : [
		'content'
	],
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSNodeAttributeStyleRule >> content [

	^content
]

{ #category : #'as yet unclassified' }
CSSNodeAttributeStyleRule >> content: aString [

	content := '[style="',aString,'"]{',aString,'}'.
	self start: 1.
	self end: content size.
	self parseContents: (ReadStream on: content)
]

{ #category : #'as yet unclassified' }
CSSNodeAttributeStyleRule >> printOn: aStream [

	aStream nextPutAll: self content
]

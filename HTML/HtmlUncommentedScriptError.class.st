Class {
	#name : #HtmlUncommentedScriptError,
	#superclass : #HtmlSyntaxError,
	#category : #'HTML-DOM-Errors'
}

{ #category : #testing }
HtmlUncommentedScriptError >> isStructuralError [

	^true
]

{ #category : #'as yet unclassified' }
HtmlUncommentedScriptError >> printOn: aStream [

	'Script should be surrounded by html comments: <!-- script -->' printOn: aStream.
]

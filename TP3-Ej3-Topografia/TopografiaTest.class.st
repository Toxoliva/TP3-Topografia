Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'unaTierra',
		'unAgua',
		'unaMixta'
	],
	#category : #'TP3-Ej3-Topografia-Tests'
}

{ #category : #running }
TopografiaTest >> setUp [
	super setUp.
	
	unAgua := Topografia agua.
	unaTierra := Topografia tierra.
	
	unaMixta := Topografia mixtaCon: { unAgua. unAgua. unAgua. unaTierra }.
]

{ #category : #tests }
TopografiaTest >> testEquality [ 
   | espejada1 espejada2 |
	self assert: ( unAgua ) equals: ( Topografia agua ).
	self assert: ( unaTierra ) equals: ( Topografia tierra ).
	
	self assert: ( unaMixta ) equals: ( Topografia mixtaCon: {unAgua. unAgua. unAgua. unaTierra} ).
	
	self deny: ( unaTierra ) equals: ( unAgua ).
	self deny: ( unaTierra ) equals: ( unaMixta ).
	self deny: ( unAgua ) equals: ( unaMixta ).
	
	espejada1 := Topografia mixtaCon: { unaTierra. unAgua. unaTierra. unAgua }.
	espejada2 := Topografia mixtaCon: { unAgua. unaTierra. unAgua. unaTierra }.
	self deny: ( espejada1 ) equals: ( espejada2 ).
	
	
]

{ #category : #tests }
TopografiaTest >> testProporcionDeAguaProporcionDeTierra [

	self assert: ( unAgua proporcionDeAgua ) equals: (1).
	self assert: ( unAgua proporcionDeTierra  ) equals: (0).
	self assert: ( unaTierra proporcionDeAgua ) equals: (0).
	self assert: ( unaTierra proporcionDeTierra ) equals: (1).
	self assert: ( unaMixta proporcionDeAgua ) equals: (0.75).
	self assert: ( unaMixta proporcionDeTierra ) equals: (0.25).
	
	unaMixta := Topografia mixtaCon: {unAgua. unAgua. unaTierra. unaMixta}.
	
	self assert: ( unaMixta proporcionDeAgua ) equals: (0.6875).
	self assert: ( unaMixta proporcionDeTierra  ) equals: (0.3125)
	
	
]

Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'unaTierra',
		'unAgua',
		'unaMixta',
		'unaMixta2',
		'mixtaCompleja',
		'mixtaComplejaIgualProporcion',
		'mixtaComplejaDiferente'
	],
	#category : #'TP3-Ej3-Topografia-Tests'
}

{ #category : #running }
TopografiaTest >> setUp [
	super setUp.
	
	unAgua := Topografia agua.
	unaTierra := Topografia tierra.
	
	unaMixta := Topografia mixtaCon: { unAgua. unAgua. unAgua. unaTierra }.
	unaMixta2 := Topografia mixtaCon: { unAgua. unaMixta. unAgua. unaTierra }.
	
	mixtaCompleja := Topografia mixtaCon: { unaMixta2. unaMixta. unaTierra. unAgua }.
	mixtaComplejaIgualProporcion := Topografia mixtaCon: { unaMixta2. unaTierra. unAgua. unaMixta }.
	mixtaComplejaDiferente := Topografia mixtaCon: { unaMixta2. unAgua. unAgua. unaMixta }.
]

{ #category : #tests }
TopografiaTest >> testDistribucion [
	self assert: unAgua distribucion equals: '1'.
	self assert: unaTierra distribucion equals: '0'.
	self assert: unaMixta distribucion equals: '{ 1 1 1 0 }'.
	self assert: mixtaCompleja distribucion equals: '{ { 1 { 1 1 1 0 } 1 0 } { 1 1 1 0 } 0 1 }'.
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
	
	self deny: (mixtaCompleja) equals: (mixtaComplejaIgualProporcion ).
	self deny: (mixtaCompleja) equals: (mixtaComplejaDiferente ).
	
	
	
	
]

{ #category : #tests }
TopografiaTest >> testMixtaInitialization [
	"Se intenta crear una topografia mixta con 5 o 3 elementos"
	self should: [Topografia mixtaCon: {unAgua. unaTierra. unaTierra. unaTierra. unaTierra}] raise: Error.
	self should: [Topografia mixtaCon: {unAgua. unaTierra. unaTierra}] raise: Error.
]

{ #category : #tests }
TopografiaTest >> testProporcionDeAgua [

	self assert: ( unAgua proporcionDeAgua ) equals: (1).
	self assert: ( unaTierra proporcionDeAgua ) equals: (0).
	self assert: ( unaMixta proporcionDeAgua ) equals: (0.75).
	
	unaMixta := Topografia mixtaCon: {unAgua. unAgua. unaTierra. unaMixta}.
	
	self assert: ( unaMixta proporcionDeAgua ) equals: (0.6875).
	
	self assert: (mixtaCompleja proporcionDeAgua ) equals: (mixtaComplejaIgualProporcion proporcionDeAgua).
	
	
]

{ #category : #tests }
TopografiaTest >> testProporcionDeTierra [

	self assert: ( unAgua proporcionDeTierra  ) equals: (0).
	self assert: ( unaTierra proporcionDeTierra ) equals: (1).
	self assert: ( unaMixta proporcionDeTierra ) equals: (0.25).
	
	unaMixta := Topografia mixtaCon: {unAgua. unAgua. unaTierra. unaMixta}.
	
	self assert: ( unaMixta proporcionDeTierra  ) equals: (0.3125).
	
	self deny: (mixtaCompleja proporcionDeTierra) equals: (mixtaComplejaDiferente proporcionDeTierra).
	
	
]

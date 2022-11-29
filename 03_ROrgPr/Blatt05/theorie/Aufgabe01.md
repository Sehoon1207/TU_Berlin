# VHDL-Attribute (2 Punkte)

Mithilfe von Attributen kann in VHDL auf bestimmte Eigenschaften von Signalen zugegriffen werden.
Informieren Sie sich zum Beispiel in [1] oder [5] über Attribute in VHDL und beantworten Sie die folgenden Fragen:

1. Wie greifen Sie auf das Attribut eines Signals zu? Geben Sie die Syntax anhand eines Beispiels an.
2. Nennen Sie drei der im Standard vordefinierten Attribute und erklären Sie kurz, was sie repräsentieren.
3. Über welche Attribute erhält man den Gültigkeitsbereich des Index für Signale des Typs std_logic_vector?
4. Wie kann man in VHDL mithilfe von Attributen eine positive bzw. negative Flanke eines Signals detektieren? Geben Sie die entsprechenden VHDL-Anweisungen an.

1. Attribute benutzt man indem man den Signalnamen direkt gefolgt von einem Apostroph und einem Attributetype schreibt.
	z.B. singal1'LAST_EVENT               (-> is the time since the last event on signal signal1)
	
2. 	i)   'BASE 		(gibt zurück um welchen Datentyp es sich handelt)
	ii)  'RANGE		(gibt Range eines Arrays zurück bsp array="abc" -> array'RANGE ist 0 to 2)
	iii) 'LOW		(gibt den Wert an dem kleinesten Indey des Arrays zurück)
	
3. 'HIGH und 'LOW returnen den Höchsten und Niedrigsten Index des Datentyps

4. signal'EVENT und signal'LAST_VALUE um zu entscheiden um welche Art Taktflanke es sich handelt(also aus if signal'event and signal = '1', erkennt man eine steigende Taktflanke)

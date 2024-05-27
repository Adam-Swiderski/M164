# M164

## Theorie der Generalisierung in der Datenbankmodellierung
### Zusammenfassung:
Die Datenbankmodellierung nach dem Attributkonzept ordnet Attribute mit ihren Ausprägungen den Entitätstypen zu. Ein Problem tritt auf, wenn mehrere Entitätstypen viele gemeinsame, aber auch einige unterschiedliche Attribute haben. Dies kann zu Redundanz führen, wenn ein Objekt der realen Welt durch mehrere Entitätstypen beschrieben wird, z.B. Mitarbeiter, die auch Kunden sind, oder Fahrer, die auch Disponenten sind. Laut Zehnder (1989) sollen „lokale Attribute“ nur einmal in einer Datenbank vorkommen, um Redundanz zu vermeiden.

Die Lösung besteht darin, die gemeinsamen Attribute in einem allgemeinen Entitätstypen zusammenzufassen (Generalisierung), während die nicht gemeinsamen Attribute in den spezifischen Entitätstypen verbleiben (Spezialisierung). Um Informationsverlust zu vermeiden, müssen die Datensätze der spezialisierten Tabellen über Fremdschlüssel auf die generalisierten Tabellen verweisen. Diese Beziehung wird als „is-a“-Beziehung bezeichnet: eine Person ist ein Fahrer.


Fahrzeug -> auto | motorrad
Sport -> fussball | basketball
Früchte -> erdbeeren | Bananen
Lebewesen -> Menschen | Fische

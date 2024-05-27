# M164

# 27.5.24
## Theorie der Generalisierung in der Datenbankmodellierung
### Zusammenfassung:
Die Datenbankmodellierung nach dem Attributkonzept ordnet Attribute mit ihren Ausprägungen den Entitätstypen zu. Ein Problem tritt auf, wenn mehrere Entitätstypen viele gemeinsame, aber auch einige unterschiedliche Attribute haben. Dies kann zu Redundanz führen, wenn ein Objekt der realen Welt durch mehrere Entitätstypen beschrieben wird, z.B. Mitarbeiter, die auch Kunden sind, oder Fahrer, die auch Disponenten sind. Laut Zehnder (1989) sollen „lokale Attribute“ nur einmal in einer Datenbank vorkommen, um Redundanz zu vermeiden.

Die Lösung besteht darin, die gemeinsamen Attribute in einem allgemeinen Entitätstypen zusammenzufassen (Generalisierung), während die nicht gemeinsamen Attribute in den spezifischen Entitätstypen verbleiben (Spezialisierung). Um Informationsverlust zu vermeiden, müssen die Datensätze der spezialisierten Tabellen über Fremdschlüssel auf die generalisierten Tabellen verweisen. Diese Beziehung wird als „is-a“-Beziehung bezeichnet: eine Person ist ein Fahrer.


Fahrzeug -> auto | motorrad          
Sport -> fussball | basketball              
Früchte -> erdbeeren | Bananen           
Lebewesen -> Menschen | Fische        

## Identifying / Non-Identifying relationship
### Zusammenfassung:
In Datenbanken unterscheidet man zwischen Identifying und Non-Identifying Beziehungen. Diese Begriffe beziehen sich darauf, wie der Primary Key der Child-Tabelle (Kind-Tabelle) zusammengesetzt ist und welche Rolle der Foreign Key (Fremdschlüssel) dabei spielt.

## Vorteile von der Datenbank
1. **Nutzung von Standards**: Einführung zentraler Standards in der Datenorganisation erleichtert die Verwaltung von Namen, Formaten, Schlüsseln und Fachbegriffen.
2. **Effizienter Datenzugriff**: Ein DBMS nutzt komplexe Techniken für das effiziente Speichern und Abrufen grosser Datenmengen.
3. **Kürzere Softwareentwicklungszeiten**: Durch Bereitstellung gemeinsamer Funktionen und Datenbanksprachen entlastet ein DBMS Programmierer von Routineaufgaben und ermöglicht eine schnellere Anwendungsentwicklung.
4. **Hohe Flexibilität**: Die Datenstruktur kann bei sich ändernden Anforderungen ohne grosse Auswirkungen auf bestehende Daten und Anwendungen modifiziert werden (Datenunabhängigkeit).
5. **Hohe Verfügbarkeit**: Dank Synchronisationseigenschaften stellt ein DBMS die Datenbank allen Benutzern gleichzeitig zur Verfügung und macht Änderungen nach Transaktionsende sofort sichtbar.
6. **Grosse Wirtschaftlichkeit**: Zentralisierung durch ein DBMS erlaubt Investitionen in leistungsstärkere Hardware und reduziert Betriebs- und Verwaltungskosten durch die Vermeidung von vielen einzelnen, schwächeren Rechnern in verschiedenen Abteilungen.

## Nachteile von der Datenbank
1. **Hohe Anfangsinvestitionen**: Notwendigkeit für teure Hardware und Datenbanksoftware.
2. **Allzweck-Software**: Ein DBMS ist nicht so effizient wie spezialisierte Software für bestimmte Anwendungen.
3. **Optimierungskonflikte**: Bei unterschiedlichen Anforderungen kann das DBMS nur für einen Teil der Anwendungsprogramme optimal sein.
4. **Mehrkosten für Datensicherheit und Konsistenz**: Zusätzliche Ausgaben für die Sicherstellung von Datensicherheit, Mehrbenutzer-Synchronisation und Konsistenzkontrolle.
5. **Erforderliches hochqualifiziertes Personal**: Notwendigkeit von spezialisierten Fachkräften wie Datenbankdesignern und Datenbankadministratoren.
6. **Verwundbarkeit durch Zentralisierung**: Zentralisierung birgt das Risiko einer grösseren Verwundbarkeit, mit dem Ausweg der Verteilung von Daten und Anwendungen.
### Geeignete Szenarien für reguläre Dateien
1. **Kein gleichzeitiger Zugriff erforderlich**: Wenn kein gleichzeitiger Zugriff durch mehrere Benutzer notwendig ist.
2. **Feste Echtzeitanforderungen**: Wenn feste Echtzeitanforderungen bestehen, die ein DBMS nicht ohne weiteres erfüllen kann.
3. **Einfache und wohldefinierte Daten**: Für Daten und Anwendungen, die einfach und wohldefiniert sind und keine Änderungen unterliegen.

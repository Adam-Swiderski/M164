1. Tablespace und Tablespace-Architektur
Ein Tablespace ist eine logische Einheit in einer Datenbank, die verwendet wird, um Daten auf logischer Ebene zu organisieren und zu verwalten. Ein Tablespace besteht aus einem oder mehreren Datafiles, die auf dem physischen Dateisystem gespeichert sind. Diese Struktur ermöglicht eine effiziente Verwaltung, Sicherung und Wiederherstellung der Daten. Vorteile von Tablespaces umfassen die verbesserte Leistung durch verteilte I/O-Operationen, gezielte Backups und eine höhere Datenverfügbarkeit, da bei einem Ausfall nur die betroffenen Tablespaces betroffen sind und nicht die gesamte Datenbank​​.

2. Partition (bezogen auf Datenbanken)
Eine Partition in Datenbanken bezieht sich auf die Aufteilung einer Tabelle oder eines Indexes in kleinere, unabhängige Teile. Diese Partitionen können auf verschiedene Arten erstellt werden, darunter:

Range Partitioning: Daten werden basierend auf einem Wertebereich partitioniert, z.B. nach Datum oder Postleitzahlen.
List Partitioning: Daten werden basierend auf einer Liste von Werten partitioniert, z.B. Ländernamen.
Hash Partitioning: Daten werden mithilfe einer Hash-Funktion aufgeteilt, um gleichmässige Datenverteilung zu gewährleisten.
Composite Partitioning: Kombinationen aus verschiedenen Partitionierungsmethoden, z.B. Range-Hash-Partitionierung.
Partitionierung verbessert die Leistung, da nur relevante Daten verarbeitet werden, und erhöht die Verfügbarkeit, da einzelne Partitionen unabhängig verwaltet werden können​​.

3. Storage Engine in einer Datenbank
Eine Storage Engine in einer Datenbank ist die Softwarekomponente, die für das Speichern, Abrufen und Verwalten von Daten verantwortlich ist. Jede Storage Engine hat ihre eigenen Methoden und Optimierungen für den Umgang mit Daten.

Synchronisationsergebnis von anderer Aufg
Nach der Synchronisation mit MySQL Workbench sollten die Änderungen in der physischen Datenbank widerspiegeln:

Die Tabelle tbl_MA wird erstellt.
Das neue Attribut Email wird zur Tabelle tbl_fahrer hinzugefügt.
Die Foreign Key-Beziehung zwischen tbl_fahrer und tbl_MA wird eingerichtet.

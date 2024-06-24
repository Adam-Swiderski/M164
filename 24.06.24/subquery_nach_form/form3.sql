SELECT vorname, nachname, anzahl_buecher
FROM (
    SELECT autoren.vorname, autoren.nachname, COUNT(buecher.buecher_id) AS anzahl_buecher
    FROM autoren
    JOIN buecher ON autoren.autoren_id = buecher.autoren_autoren_id
    GROUP BY autoren.vorname, autoren.nachname
    HAVING COUNT(buecher.buecher_id) > 4
) AS bekannte_autoren;

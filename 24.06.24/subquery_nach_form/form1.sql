SELECT SUM(avg_einkaufspreis)
FROM (
    SELECT sparten.bezeichnung, AVG(buecher.einkaufspreis) AS avg_einkaufspreis
    FROM buecher
    JOIN buecher_has_sparten ON buecher.buecher_id = buecher_has_sparten.buecher_buecher_id
    JOIN sparten ON sparten.sparten_id = buecher_has_sparten.sparten_sparten_id
    GROUP BY sparten.bezeichnung
    HAVING sparten.bezeichnung != 'Humor' AND AVG(buecher.einkaufspreis) > 10
) AS subquery;

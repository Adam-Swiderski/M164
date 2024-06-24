USE buchladen;

SELECT * FROM buecher WHERE verkaufspreis = (SELECT MAX(verkaufspreis) FROM buecher);

SELECT * FROM buecher WHERE verkaufspreis = (SELECT MIN(verkaufspreis) FROM buecher);

SELECT * FROM buecher WHERE einkaufspreis > (SELECT AVG(einkaufspreis) FROM buecher);

SELECT * FROM buecher 
WHERE einkaufspreis > (SELECT AVG(einkaufspreis) 
                       FROM buecher 
                       JOIN buecher_has_sparten ON buecher.buecher_id = buecher_has_sparten.buecher_buecher_id 
                       JOIN sparten ON sparten.sparten_id = buecher_has_sparten.sparten_sparten_id 
                       WHERE sparten.bezeichnung = 'Thriller');

SELECT * FROM buecher 
JOIN buecher_has_sparten ON buecher.buecher_id = buecher_has_sparten.buecher_buecher_id 
JOIN sparten ON sparten.sparten_id = buecher_has_sparten.sparten_sparten_id 
WHERE sparten.bezeichnung = 'Thriller' 
AND einkaufspreis > (SELECT AVG(einkaufspreis) 
                     FROM buecher 
                     JOIN buecher_has_sparten ON buecher.buecher_id = buecher_has_sparten.buecher_buecher_id 
                     JOIN sparten ON sparten.sparten_id = buecher_has_sparten.sparten_sparten_id 
                     WHERE sparten.bezeichnung = 'Thriller');
                     
SELECT * FROM buecher 
WHERE (verkaufspreis - einkaufspreis) > (SELECT AVG(verkaufspreis - einkaufspreis) 
                                         FROM buecher 
                                         WHERE buecher_id != 22);


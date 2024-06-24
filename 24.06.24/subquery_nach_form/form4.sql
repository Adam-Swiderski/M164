SELECT verlagsname, avg_gewinn_pro_buch
FROM (
    SELECT verlage.verlagsname, AVG(buecher.verkaufspreis - buecher.einkaufspreis) AS avg_gewinn_pro_buch
    FROM buecher
    JOIN verlage ON buecher.verlage_verlage_id = verlage.verlage_id
    GROUP BY verlage.verlagsname
    HAVING AVG(buecher.verkaufspreis - buecher.einkaufspreis) < 10
) AS verlags_gewinn
WHERE avg_gewinn_pro_buch <= 7;

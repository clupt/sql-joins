-- write yourSELECT owners.id, first_name,vehicles.id, make, model, year, price, owner_id
SELECT *
    FROM owners as o
        LEFT JOIN vehicles as v
        ON o.id = v.owner_id
        ORDER BY o.id;

SELECT o.first_name, COUNT(owner_id)
    FROM owners as o
        JOIN vehicles as v
        ON o.id = v.owner_id
    GROUP BY o.id
    ORDER BY o.first_name;
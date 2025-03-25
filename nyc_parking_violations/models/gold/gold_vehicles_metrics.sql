SELECT
    plate_id,
    COUNT(summons_number) AS ticket_count,
FROM
    {{ref('silver_violation_vehicles')}}
GROUP BY
    plate_id
ORDER BY
    ticket_count DESC
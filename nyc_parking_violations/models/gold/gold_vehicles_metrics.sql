SELECT
    registration_state,
    COUNT(summons_number) AS ticket_count,
FROM
    {{ref('silver_violation_vehicles')}}
GROUP BY
    registration_state
ORDER BY
    ticket_count DESC
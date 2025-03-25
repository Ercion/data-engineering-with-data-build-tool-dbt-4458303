SELECT
    summons_number,
    plate_id,
    registration_state,
    plate_type,
    issue_date,
    violation_code,
    vehicle_body_type,
    vehicle_make,
    issuing_agency,
    street_code1,
    street_code2,
    street_code3,
    vehicle_expiration_date,
    violation_location,
    violation_precinct,
    issuer_precinct,
    issuer_code,
    issuer_command,
    issuer_squad,
    violation_time,
    violation_county,
    street_name,
    violation_legal_code,
    vehicle_color,
    vehicle_year,
    violation_post_code,
    violation_description,
    CASE WHEN
        violation_county == 'MN'
        THEN TRUE
        ELSE FALSE
        END AS is_manhattan_96th_st_below
FROM
    {{ref('bronze_parking_violations')}}
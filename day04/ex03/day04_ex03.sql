SELECT generated_date AS missing_date
FROM v_generated_dates
    LEFT JOIN person_visits ON generated_date = visit_date
WHERE visit_date IS NULL
ORDER BY missing_date;

-- - The check script is below.

    -- SELECT generated_date as missing_date
    -- FROM v_generated_dates
    -- except
    -- SELECT visit_date
    -- FROM person_visits
    -- ORDER BY 1

-- -The result below (raw ordering should be the same like on a screen below)

    -- "2022-01-11"
    -- "2022-01-12"
    -- "2022-01-13"
    -- "2022-01-14"
    -- "2022-01-15"
    -- "2022-01-16"
    -- "2022-01-17"
    -- "2022-01-18"
    -- "2022-01-19"
    -- "2022-01-20"
    -- "2022-01-21"
    -- "2022-01-22"
    -- "2022-01-23"
    -- "2022-01-24"
    -- "2022-01-25"
    -- "2022-01-26"
    -- "2022-01-27"
    -- "2022-01-28"
    -- "2022-01-29"
    -- "2022-01-30"
    -- "2022-01-31"
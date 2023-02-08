select distinct person_id from person_visits where visit_date between '2022-01-06' and '2022-01-09'
                                       or pizzeria_id = 2 order by person_id desc;

    -- - The result is below (raw ordering should be the same like below)

    --   9
    --   8
    --   7
    --   6
    --   5
    --   4
    --   2
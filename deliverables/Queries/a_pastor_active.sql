SELECT title, first_nnme,
CASE mstatus
WHEN 1 THEN 'Active'
WHEN 2 THEN 'Inactive'
WHEN 3 THEN 'Retired'
WHEN 4 THEN 'Terminated'
WHEN 5 THEN 'Deceased'
END AS actual_status
FROM public.tbl_person_a
order by actual_status
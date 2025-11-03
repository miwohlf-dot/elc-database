SELECT p.pers_title,
p.pers_given_name,
p.pers_surname, 
'avtive',
sv.svc_role,
sv.svc_year_from,
sv.svc_year_to,
sv.svc_district
FROM public.tbl_person p,
public.tbl_service_area sv
where 1=1
and p.pers_id = sv.svc_id
and (sv.svc_year_to =2024
or (sv.svc_year_from =2024 and sv.svc_year_to is null))
ORDER BY sv.svc_id ASC, sv.svc_order_id ASC 
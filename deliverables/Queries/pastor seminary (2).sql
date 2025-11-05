select p.pers_title, p.pers_given_name, 
p.pers_surname,
t.et_institution,et_attainment
from public.tbl_person p,
public.tbl_edu_tertiary t
where t.et_id = p.pers_id
order by t.et_id, t.et_order
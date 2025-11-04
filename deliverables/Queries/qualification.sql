select p.pers_title,
p.pers_given_name,
p.pers_surname,
et.et_institution,
et.et_course,
et.et_attainment,
eo.eo_name,
eo.eo_trainer_institution,
eo.eo_sttainment
from public.tbl_person p,
public.tbl_edu_tertiary et,
public.tbl_edu_other eo
where eo.eo_id = p.pers_id
and et.et_id = p.pers_id
order by et.et_id, et.et_order
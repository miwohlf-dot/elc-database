SELECT p.pers_id,
p.pers_title,
p.pers_given_name,
p.pers_surname, 
et.et_institution
FROM public.tbl_person p,
public.tbl_edu_tertiary et
where p.pers_id = et.et_id
ORDER BY et_institution ASC
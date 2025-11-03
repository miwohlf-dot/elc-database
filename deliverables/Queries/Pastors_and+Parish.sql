select  p.pers_id,
    p.pers_title  as titel,
    p.pers_given_name  as name,
    p.pers_baptism_name as BaptiumsName,
    p.pers_surname  as Surname,
    s.es_district,
    s.es_circuit,
    s.es_parish,
    s.es_congregation
from 
public.tbl_person p,
public.tbl_elc_struc1 s
where 
1=1
and p.pers_id = s.es_id
order by p.pers_id
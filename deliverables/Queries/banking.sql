SELECT p.pers_id,
p.pers_title,
p.pers_given_name,
p.pers_surname, 
b.ba_bank,
b.ba_account_name,
b.ba_account_nr
FROM public.tbl_person p,
public.tbl_banking b
where p.pers_id =b.ba_pers_id
and b.ba_bank is not null
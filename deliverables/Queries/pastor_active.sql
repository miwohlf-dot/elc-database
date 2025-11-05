SELECT * FROM public.tbl_service_area
where svc_year_to > 2023
or svc_year_from > 2023
ORDER BY svc_id ASC, svc_order_id ASC 
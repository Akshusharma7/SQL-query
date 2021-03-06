Find the user name and domain from email table.

select email, substring_index(email,'@',1) as name, substring_index(email,'@',-1) as domain
from emailaddr
output : 
email               name      domain
ram123@gmail.com    ram123    gmail.com


-------------------------------
select email substring_index(substring_index(email,'@',-1),'.',1) as domain_name
from emailaddr

output:
email               domain_name  
ram123@gmail.com    gmail

------------------------------

select email, substring_index(email,'@',2) as name
from emailaddr

output : 
email               name
abc@def@gmail.com   abc@def


select emalid, substring_index(emalid, '@',1) as valid,
      substring_index(emalid, '@', -1) as Domain
from email;

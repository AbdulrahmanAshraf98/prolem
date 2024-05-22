select e.employee_id , e.department_id 
from Employee as e
where primary_flag = 
(
    case 
        when (select count(*) from Employee where employee_id = e.employee_id) > 1 then 'Y'
        when (select COUNT(*) from Employee where employee_id = e.employee_id and primary_flag ='Y') = 1 then 'Y'
        else 'N' 
    end
)


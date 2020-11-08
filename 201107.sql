select 주인이름
, 성별 || '(' || 나이 || ')' as 성별나이
, substr(이메일, 1, instr(email, '@', 1)-1) as emailid

select 서재명
, 책이름 || '(' || lpad(substr(저자이름,2),len(저자이름),'*') || ')'  as 책정보
, 책가격

select 서재명
책이름 || '(' || '**' || substr(저자이름,3) || ')'  as 책정보
, 책가격

select 주인이름, 나이, 성별, 서재명, 책권수, 친절도
from 서재주인 inner join 서재

select a.주인이름, substr(a.email, 1, instr(email, '@', 1)-1) as email_id
, nvl(b.서재명, “아직없음”), nvl(b.책권수, 0)
where 서재주인 a left outer join 서재 b on (a.주인이름=b.주인이름)

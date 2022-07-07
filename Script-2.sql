-- Contare quanti iscritti ci sono stati ogni anno
select count(*), year(enrolment_date) 
from students s 
group by year (enrolment_date) 
order by year (enrolment_date) asc;

-- Selezionare tutti gli studenti iscritto al Corso di Laurea in Economia
select s.degree_id , s.name, s.surname, d.name from students s 
join degrees d on s.degree_id  = d.id
where d.name = 'Corso di Laurea in Economia'; 

-- Selezionare tutti i corsi in cui insegna Fulvio Amato
select t.id , t.name , t.surname,  c.degree_id, c.name  from teachers t
join courses c on t.id = c.degree_id  
where t.id = 44;

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
select s.surname ,s.name ,d.name,dp.name from students s 
join degrees d 
on s.degree_id = d.id
join departments dp 
on d.department_id = dp.id 
order by s.surname  ,s.name ;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento e mostrare nome dipartimento e numero di corsi
select count(dp.id) as numero_corsi_di_laurea, dp.name from degrees d 
inner join departments dp 
on d.department_id = dp.id
group by dp.name ;
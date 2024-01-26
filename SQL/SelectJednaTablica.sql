-- select lista nalazi se izme�u select i from

-- filtriranje kolona

-- * sve kolone
select * from smjerovi;

-- nazivi kolona
select naziv, cijena from smjerovi;

-- konstanta
select naziv, 'Osijek', 8, 9.8 from smjerovi;

-- kolonama se mo�e dati zamjensko ime
select naziv as smjer, 'Osijek' as grad from smjerovi;

-- izraz
select naziv, len(naziv) as duzina, 
getdate() as datum from smjerovi;

-- najjednostavniji select
select 1;

-- najkompliciranji primjer
select sifra as s, naziv as n, 'Edunova' as skola,
len(naziv) as duzina, * from smjerovi;

-- filtriranje redova - where dio

select * from smjerovi where sifra=1;

-- operatori
-- uspore�ivanje = > >= < <= !=
select * from polaznici where sifra!=7;

select * from polaznici where ime='Ivan';

select * from grupe where datumpocetka>'2023-09-01';

-- logi�ke operatori: and, or
select * from polaznici where
not (ime='Ivan' or ime='Ivor');

-- ostali operatori: like
select * from polaznici where ime not like '%a%';

-- koji su polaznici s po�etnim slovom prezimena B
select * from polaznici where prezime like 'B%�i�';

-- kaladont
select * from polaznici where prezime like '%nt';

select * from polaznici where 
sifra=2 or sifra=4 or sifra=7;

-- jednostavnija sintaksa
select * from polaznici where sifra in (2,4,7);

select * from polaznici where
sifra>=6 and sifra<=10;

-- jednostavnija sintaksa
select * from polaznici where
 sifra between 6 and 10;

select * from grupe where
datumpocetka between '2023-01-01' and '2023-12-31';

-- na null vrijednosti u tavlicama ne mo�e se primjenjivati niti jedan prethodno opisan operator
select * from smjerovi where brojsati=NULL;

-- koristi se: is null, is not null
select * from smjerovi where brojsati is not null;

select isnull(brojsati,30) as bs from smjerovi;


-- slaganje podataka

select * from polaznici order by prezime desc, 2 desc;

-- limitiranje podataka

select top 10 * from polaznici;

select top 10 percent * from polaznici;


select ime as djever, brojugovora as racun 
into nova
from polaznici; 


select * from nova;

drop table nova;







----------------------------------------
--- BAZA knjiznica

-- izlistajte imena i prezimena autora


-- koliko ima redova u tablici autor


-- izlistajte sve autore koji su ro�eni u 
-- Va�oj godini ro�enja


-- unesite sebe kao autora


-- Mladi�a je ostavila djevojka i on pati
-- Moli pomo� knji�ni�arke koje knjige da 
-- posudi kako bi ju prebolio


-- islistajte sve neaktivne izdava�e


-- izlistajte sve izdava�e koji su
-- dru�tva s ograni�enom odgovorno��u


-- Izlistajte sva mjesta u osje�ko baranjskoj �upaniji




-- S najmanjom pogre�kom
-- islistajte sve autorice

-- jedinstveni rezultati
select distinct ime from autor where ime like '%a';



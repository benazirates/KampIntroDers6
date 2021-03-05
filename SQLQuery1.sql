--Select
--select *  kolonlar anlamına gelir
--sql server case insensitivedir yani sEleCT yazılabilir.
Select ContactName Adi, CompanyName SirketAdi, City Sehir from Customers --bu satır aslında bir tablodur.
Select * from Customers where City = 'Berlin'--metinler ansı standartlarından tırnak içinde yazılır.
select * from Products where CategoryID=1 or CategoryID=3
select * from Products where CategoryID=1 and UnitPrice>=10
select * from Products order by ProductName
select * from Products order by CategoryID, ProductName
select *  from Products order by UnitPrice asc --ascending artan demek descending azalış demek 
--Select
--select *  kolonlar anlamına gelir
--sql server case insensitivedir yani sEleCT yazılabilir.
Select ContactName Adi, CompanyName SirketAdi, City Sehir from Customers
Select * from Customers where City = 'Berlin'
select * from Products where CategoryID=1 or CategoryID=3
select * from Products where CategoryID=1 and UnitPrice>=10
select * from Products order by ProductName
select * from Products order by CategoryID, ProductName
select *  from Products order by UnitPrice asc --ascending artan demek descending azalış demek 
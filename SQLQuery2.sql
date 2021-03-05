--Select
--select *  kolonlar anlamına gelir
--sql server case insensitivedir yani sEleCT yazılabilir.
Select ContactName Adi, CompanyName SirketAdi, City Sehir from Customers --bu satır aslında bir tablodur.
Select * from Customers where City = 'Berlin' --metinler ansı standartlarından tırnak içinde yazılır.
select * from Products where CategoryID=1 or CategoryID=3
select * from Products where CategoryID=1 and UnitPrice>=10
--CATEGORYID Sİ 1 OLAN ÜRÜNLERİ UNİTİ 10 VE 10+ OLANA GÖRE FİLTRELE
select * from Products order by ProductName 
--ORDER BY SIRALA DEMEK
select * from Products order by CategoryID, ProductName
select *  from Products order by UnitPrice asc --asc(ending) artan demek desc(ending )azalış demek 
SELEcT COUNT(*) FROM products 
SELEcT COUNT(*) adet FROM products where CategoryID = 2
select categoryId, count(*) from products  group by CategoryID 
select categoryId, count(*) from products where UnitPrice>20 group by CategoryID having count (*)< 10
 
 
 -- DTO Data Tranformation Object
 
select * from Products p inner join [Order Details] od on p. ProductID = od.ProductID

select * from Products p left join [Order Details] od on p. ProductID = od.ProductID

select * from Customers c left join Orders  o on c.CustomerID = o.CustomerID where o. CustomerID is null
-- left join solda olup sağda olmayanlarıda getir.
--right join sağda olup solda olmayanlarıda getir.
--inner join sadece eşleşen kayıtları getirir.
--inner join iki tabloda  eşleşiyorsa birleştitir 
--birden fazla tabloyu join etmrk istersek 
--select * from Products p inner join [Order Details] od on p. ProductID = od.ProductID inner join Orders o on o.orderId= od.orderId
-- burda yazdığımız c custumerın baş harfi , p products , od order drtails, o ordersdır. 

--having kümülatiflere yani counta uygulanır.

--burda yazdığımız count group olduğu için herbir group elemanı için hesapanır.
--group by kullandığımız zaman select ettiğimiz şey kolan sadece ve sadece gr byda yazdığımız alan olabilir ve count * gibi kümülatif datalar olabilir.
--bana datamı catagoryıd ye göre grupla demek dolayısıyla burda * olmaz

--SELEcT COUNT(*), --ProductName böyke diyemeyiz  productname mi productstan sonra yazmalıyız FROM products 
--yani countun yanına kolonları getiremeyiz.
--satırı seçip çalıştırdığımızda o satır çalışır .

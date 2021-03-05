
SELECT p.productname as "ürün adı", count(*) as "adet",sum(od.Unitprice*od.Quantity ) as"kazanılan toplam miktar" 
FROM Orders o 
inner JOIN [Order Details] od  ON o.OrderID = od.orderID
inner JOIN Products p  ON  p.ProductID = od.ProductID 

group by ProductName order by [kazanılan toplam miktar], adet


--select * from (( [Order Details] od inner join Products p on od. ProductID = p.ProductID )
-- inner join [Orders] o on od. orderID = o.orderID);

--select * from ((Products p left join [Order Details] od on p. ProductID = od.ProductID)
 --left join [Orders] o on p. ProductID = o.orderID);




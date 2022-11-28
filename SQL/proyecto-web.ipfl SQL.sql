CREATRE TABLE usuario (
	id_usuario int primary key,
	nombre_usuario varchar (255),
	contraseña int,
	direccion varchar (255)
);

SELECT * FROM usuario

insert into usuario VALUES (1,'Matias',2224,'Calchaqui');
insert into usuario VALUES (2,'Damian',2225,'Sarratea');
insert into usuario VALUES (3,'Gabriel',2226,'Acha');
insert into usuario VALUES (4,'Juan',2227,'Sarratea');
insert into usuario VALUES (5,'Pablo',2228,'laprida');
insert into usuario VALUES (6,'Ana',2229,'Alem');
insert into usuario VALUES (7,'Elu',2230,'yapeyu');
insert into usuario VALUES (8,'Julieta',2231,'ayacucho');
insert into usuario VALUES (9,'Roberto',2232,'Cabral');
insert into usuario VALUES (10,'Mirtha',2233,'Calchaqui');

create table pruducto (
	id_pruducto int primary key,
	descripcion varchar(255);
	proveedor varchar (255),
	);

SELECT * FROM pruducto

ALTER table pruducto rename to producto

insert into pruducto VALUES (1,'Sprite','Distribuidora A');
insert into pruducto VALUES (2,'Fanta','Distribuidora B');
insert into pruducto VALUES (3,'Amburguesa completa','Burger');
insert into pruducto VALUES (4,'Pizza especial',' rivadavia');
insert into pruducto VALUES (5,'Empanadas de JamonyQueso','Elhornito');

truncate table pruducto

create table pedidio (
	id_factura int primary key,
	producto varchar (200),
	usuario varchar (200)
	cantidad int,
	monto int
);

SELECT * FROM pedido 

insert into pedido VALUES (6,'Alfajor - CapitandelEspacio','Matias', 1, 50);
insert into pedido VALUES (7,'Coca-cola','Damian', 2, 1000);
insert into pedido VALUES (8,'Combo completo - Hamburguesa','Pablo', 2, 1500);
insert into pedido VALUES (9,'Pizza especial',' Gabriel', 1, 700 );
insert into pedido VALUES (10,'Empanadas de JamonyQueso','Juan', 12, 1200);

create table factura (
	id int primary key,
	monto int,
	tipo_pago
);

insert into factura VALUES (11,50, 'efectivo');
insert into factura VALUES (12,1000, 'efectivo');
insert into factura VALUES (13, 1500, 'Mercado pago');
insert into factura VALUES (14,700,'Mercado pago');
insert into factura VALUES (15,1200, 'efectivo');



-------------------------------------------------------------

--5/B

SELECT * FROM pedido
INNER join factura
on pedido.id_factura = factura.id

select producto from pedido
SELECT monto from factura
select tipo_pago from factura

--select producto as pedido, monto as factura, tipo_ as factura
--from pedido inner join factura
--where usuario=cantidad=id_factura=id=monto

--SELECT * FROM pedido,factura WHERE producto=tipo_pago
----------------------------------------------------------
--5/A

SELECT * from pedido 
INNER JOIN usuario 
on usuario.nombre_usuario = pedido.producto

SELECT nombre_usuario from usuario
select producto from pedido
select cantidad from pedido
SELECT monto from pedido

--5/C

select * from pedido
inner join pruducto
on pruducto.id_producto = pedido.id_factura

SELECT descripcion FROM pruducto
select cantidad from pedido
select monto from pedido

-- 5/G

alter table factura
UPDATE factura set tipo_pago = 'aplicacion debito' where tipo_pago = 'efectivo';


-- 5/F
select * from pedido, factura where factura.tipo_pago = 'efectivo';

--5/E

create table pagos (
	id int primary key,
	monto int,
	tipo_pago_opcional
);

insert into pagos VALUES (16,50, 'efectivo');
insert into pagos VALUES (17,1000, 'efectivo');
insert into pagos VALUES (18, 1500, 'debito');
insert into pagos VALUES (19,700,'debito');
insert into pagos VALUES (20,1200, 'efectivo');

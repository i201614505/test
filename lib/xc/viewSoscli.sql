-- vista admision
DROP VIEW IF EXISTS `viewAdmision`;

CREATE VIEW `viewAdmision`
AS
	select a.numate, a.numhis, concat(p.nom,  ' ', p.ape) as nomPa, po.pol, p.ncar, b.des as bene, c.des as che, e.des as espe from admision a inner join paciente p
	on a.numhis = p.numdoc inner join poliza po
	on p.npol = po.cod inner join beneficio b
	on a.bene = b.cod left join chequeo c
	on b.cod = c.bene inner join especialidad e
	on a.espe = e.id
    group by a.numate ;

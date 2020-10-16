CREATE VIEW `deleveloper_roles_and_privileges1` AS
SELECT p.firstName, p.lastName, p.username, p.email 
FROM PERSONS p
WHERE idpersons IN (SELECT id FROM developers);
JOIN website_roles wr ON p.idpersons=wr.developer_id
SELECT wr.role
FROM website_roles wr;
JOIN website_priviledges wp ON wp.website_id=wr.website_id
SELECT wp.priviledges 
FROM website_priviledges wp
JOIN website w ON wp.website_id=w.id
SELECT w.name, w.visits, w.updated
FROM websites w
JOIN pages p ON w.id=p.website_id
SELECT p.title, p.views, p.updated
FROM pages p
JOIN page_roles on p.id=pr.page_id
SELECT pr.role
FROM pages_roles pr
JOIN page_priviledges pp on (pr.page_id=pp.page_id)
SELECT pp.priviledge
FROM pages_priviledges pp
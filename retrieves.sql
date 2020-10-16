SELECT * FROM developers;
SELECT * FROM developers WHERE id=34;
SELECT * FROM developers WHERE id IN (SELECT developer_id FROM
website_roles WHERE website_id=234 AND NOT role='owner');
SELECT * FROM developers WHERE id IN (SELECT developer_id FROM
page_roles WHERE role='reviewer' AND page_id IN (SELECT id FROM pages WHERE views<300000));
SELECT * FROM developers WHERE id IN (SELECT developer_id FROM
page_roles WHERE role='writer' AND page_id=123);
SELECT MIN(visits) FROM websites;
SELECT name FROM websites WHERE id=678;
SELECT * FROM websites WHERE id IN (SELECT website_id FROM pages WHERE id=456);
SELECT * FROM websites WHERE id IN (SELECT website_id FROM website_roles WHERE 
developer_id=12 AND role='owner');
SELECT * FROM websites WHERE id IN (SELECT website_id FROM website_roles WHERE 
developer_id=34 AND role='admin') AND (SELECT id FROM websites WHERE 
visits>6000000);
SELECT MAX(views) FROM pages;
SELECT title FROM pages WHERE id=234;
SELECT * FROM pages WHERE id IN (SELECT page_id FROM
page_roles WHERE developer_id=12 AND role='editor');
SELECT SUM(views) FROM pages WHERE website_id=567;
SELECT AVG(views) FROM pages WHERE website_id=345;
SELECT * FROM widgets WHERE page_id IN (SELECT id FROM pages WHERE id=123);
SELECT * FROM widgets WHERE dtype='YouTube' AND page_id IN (SELECT id FROM pages 
WHERE website_id=456);
SELECT * FROM widgets WHERE dtype='image' AND page_id IN (SELECT page_id FROM page_roles 
WHERE developer_id=12 AND role='reviewer');
SELECT COUNT(*) FROM widgets WHERE page_id IN (SELECT id FROM pages 
WHERE website_id=345);
SELECT name FROM websites WHERE id IN (SELECT website_id FROM website_priviledges WHERE
developer_id=23 AND priviledge='delete');
SELECT name FROM websites WHERE id IN (SELECT website_id FROM website_priviledges WHERE
developer_id=34 AND priviledge='create');
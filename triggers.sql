CREATE DEFINER=`root`@`localhost` TRIGGER `A2`.`website_roles_AFTER_INSERT` AFTER INSERT ON `website_roles` FOR EACH ROW
BEGIN
IF NEW.role='admin' OR NEW.role='owner' THEN
	INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'create');
	INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'read');
	INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'update');
	INSERT INTO website_priviledges VALUES
		(NEW.developer_id, NEW.website_id, 'delete');

END IF;
IF NEW.role='reviewer' THEN
	INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'read');
END IF;
IF NEW.role='writer' THEN
	INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'read');
    INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'create');
    INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'update');
END IF;
IF NEW.role='editor' THEN
	INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'read');
    INSERT INTO website_priviledges VALUES
	(NEW.developer_id, NEW.website_id, 'update');
END IF;
END

CREATE DEFINER=`root`@`localhost` TRIGGER `A2`.`pages_roles_AFTER_INSERT` AFTER INSERT ON `pages_roles` FOR EACH ROW
BEGIN
IF NEW.role='admin' OR NEW.role='owner' THEN
	INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'create');
	INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'read');
	INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'update');
	INSERT INTO page_priviledges VALUES
		(NEW.developer_id, NEW.page_id, 'delete');

END IF;
IF NEW.role='reviewer' THEN
	INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'read');
END IF;
IF NEW.role='writer' THEN
	INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'read');
    INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'create');
    INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'update');
END IF;
IF NEW.role='editor' THEN
	INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'read');
    INSERT INTO page_priviledges VALUES
	(NEW.developer_id, NEW.page_id, 'update');
END IF;
END
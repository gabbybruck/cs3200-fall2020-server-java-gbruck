INSERT INTO `widgets` VALUES (123,'head123',NULL,NULL,NULL,'Welcome',0,'heading',NULL,NULL,NULL,NULL,NULL,NULL,NULL,123),(234,'post234',NULL,NULL,NULL,'<p>Lorem</p>',0,'html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,234),(345,'head345',NULL,NULL,NULL,'Hi',3,'heading',NULL,NULL,NULL,NULL,NULL,NULL,NULL,345),(456,'intro456',NULL,NULL,NULL,'<h1>Hi</h1>',2,'html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,345),(567,'image345',50,100,NULL,NULL,3,'image',NULL,'/img/567.png',NULL,NULL,NULL,NULL,NULL,345),(678,'video456',400,300,NULL,NULL,0,'youtube',NULL,'https://youtu.be/h67VX51QXiQ',NULL,NULL,NULL,NULL,NULL,456);

INSERT INTO `websites` VALUES (123,'Facebook','an online social media and social networking service',NULL,NULL,'1234234',NULL),(234,'Twitter','an online news and social networking service',NULL,NULL,'4321543',NULL),(345,'Wikipedia','a free online encyclopedia',NULL,NULL,'3456654',NULL),(456,'CNN','an American basic cable and satellite television news channel',NULL,NULL,'6543345',NULL),(567,'CNET','an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics',NULL,NULL,'5433455',NULL),(678,'Gizmodo','a design, technology, science and science fiction website that also writes articles on politics',NULL,NULL,'4322345',NULL);

INSERT INTO `website_roles` VALUES (1,'owner',456,12),(2,'admin',456,34),(3,'editor',456,23),(4,'owner',567,23),(5,'admin',567,12),(6,'editor',567,34),(7,'owner',678,34),(8,'admin',678,23),(9,'editor',678,NULL),(12,'owner',123,12),(23,'admin',123,34),(34,'editor',123,23),(45,'owner',234,23),(56,'admin',234,12),(67,'editor',234,34),(78,'owner',345,34),(89,'admin',345,23),(90,'editor',345,12);

INSERT INTO `users` VALUES (45,1),(56,0);

INSERT INTO `roles` VALUES ('admin'),('editor'),('owner'),('reviewer'),('writer');

INSERT INTO `priviledges` VALUES ('create'),('delete'),('read'),('update');

INSERT INTO `phones` VALUES (12,'123-234-3456',1,12),(23,'234-345-4566',0,12),(34,'345-456-5677',1,23),(45,'-5666',1,34),(56,'-5666',0,34),(67,'-5666',0,34);

INSERT INTO `persons` VALUES (12,'Alice','Wonder','alice','alice','alice@wonder.com',NULL),(23,'Bob','Marley','bob','bob','bob@marley.com',NULL),(34,'Charles','Garcia','charlie','charlie','chuch@garcia.com',NULL),(45,'Dan','Martin','dan','dan','dan@martin.com',NULL),(56,'Ed','Karaz','ed','ed','ed@kar.com',NULL);

INSERT INTO `pages` VALUES (123,'Home','Landing page',NULL,NULL,123434,567),(234,'About','Website description',NULL,NULL,234545,678),(345,'Contact','Addresses, phones, and contact info',NULL,NULL,345656,345),(456,'Preferences','Where users can configure their preferences',NULL,NULL,456776,456),(567,'Profile','Users can configure their personal information',NULL,NULL,567878,567);

INSERT INTO `addresses` VALUES (12,'123 Adam St.',NULL,'Alton',NULL,'01234',1,12),(23,'234Birch St.',NULL,'Boston',NULL,'02345',0,12),(34,'345 Charles St.',NULL,'Chelms',NULL,'03455',1,34),(45,'456 Down St.',NULL,'Dalton',NULL,'04566',0,34),(56,'543 East St.',NULL,'Everett',NULL,'01112',0,34),(67,'654 Frank St.',NULL,'Foulton',NULL,'04322',1,45);

INSERT INTO `pages_roles` VALUES (1,'editor',123,12),(2,'reviewer',123,23),(3,'writer',123,34),(4,'editor',234,23),(5,'reviewer',234,34),(6,'writer',234,12),(7,'editor',345,34),(8,'reviewer',345,12),(9,'writer',345,23),(10,'editor',456,12),(11,'reviewer',456,23),(12,'writer',456,34),(13,'editor',567,23),(14,'reviewer',567,34),(15,'writer',567,12);

INSERT INTO `developers` VALUES (12,'4321rewq'),(23,'5432trew'),(34,'6543ytre');
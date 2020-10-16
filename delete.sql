DELETE FROM addresses WHERE address.primary=1 AND person_id=12;
DELETE FROM widgets WHERE widgets.order=MAX(widgets.order);
DELETE FROM pages WHERE updated=MAX(updated);
DELETE FROM website WHERE id=567;
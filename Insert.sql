INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Комп''ютерна техніка'),
(2, 'Офісні меблі'),
(3, 'Побутова техніка');

INSERT INTO Room (RoomID, RoomNumber, RoomName) VALUES
(1, '101', 'Кабінет керівника'),
(2, '102', 'Бухгалтерія'),
(3, '103', 'Розробники');

INSERT INTO Employee (EmployeeID, FullName, Position) VALUES
(1, 'Стіренко Сергій Григорович', 'Директор'),
(2, 'Дольник Артем Ігорович', 'Головний бухгалтер'),
(3, 'Якубін Олександр Олександрович', 'Senior Java Developer'),
(4, 'Новіков Іван Олегович', 'HR-менеджер');

INSERT INTO Asset (AssetID, InventoryNumber, AssetName, Price, CategoryID) VALUES
(1, 'INV-COMP-001', 'Ноутбук Apple MacBook Pro 16', 115000.00, 1),
(2, 'INV-COMP-002', 'Монітор Dell UltraSharp 27', 18500.00, 1),
(3, 'INV-FURN-001', 'Стіл офісний кутовий', 4500.00, 2),
(4, 'INV-FURN-002', 'Крісло ергономічне', 8200.00, 2),
(5, 'INV-APPL-001', 'Кавомашина Philips', 22000.00, 3);

INSERT INTO Asset_Allocation (AllocationID, AssetID, EmployeeID, RoomID, IssueDate, ReturnDate) VALUES
(1, 1, 3, 3, '2026-01-15', NULL), -- Ноутбук виданий програмісту, ще не повернув
(2, 2, 3, 3, '2026-01-15', NULL), -- Монітор виданий програмісту, ще не повернув
(3, 5, 4, 2, '2026-02-01', '2026-04-10'), -- Кавомашина була в бухгалтерії, але її повернули (в ремонт)
(4, 3, 2, 2, '2026-03-10', NULL), -- Стіл виданий головному бухгалтеру
(5, 4, 1, 1, '2025-12-01', NULL); -- Крісло видане директору

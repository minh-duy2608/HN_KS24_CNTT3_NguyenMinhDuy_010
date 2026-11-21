-- =============================================================================
--  database/init.sql - Khởi tạo dữ liệu cho đề 010: Quản lý đơn hàng
--  MySQL tự chạy file này ở LẦN KHỞI ĐỘNG ĐẦU TIÊN khi được mount vào
--  /docker-entrypoint-initdb.d/  (database và user do biến MYSQL_* tạo sẵn)
-- =============================================================================
SET NAMES utf8mb4;

USE ptit_order_db;

CREATE TABLE IF NOT EXISTS orders (
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_code      VARCHAR(20) NOT NULL,
    customer_name   VARCHAR(100) NOT NULL,
    order_date      DATE NOT NULL,
    total_amount    DECIMAL(12,2) NOT NULL,
    status          VARCHAR(30) NOT NULL,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO orders (order_code, customer_name, order_date, total_amount, status) VALUES
    ('DH-2026-001', 'Nguyễn Văn An', '2026-11-01', 1250000, 'Đã giao'),
    ('DH-2026-002', 'Trần Thị Bình', '2026-11-02', 480000, 'Đang giao'),
    ('DH-2026-003', 'Lê Văn Cường', '2026-11-03', 3590000, 'Đã giao'),
    ('DH-2026-004', 'Phạm Thị Dung', '2026-11-05', 215000, 'Đã hủy'),
    ('DH-2026-005', 'Hoàng Văn Em', '2026-11-06', 7490000, 'Chờ xác nhận'),
    ('DH-2026-006', 'Vũ Thị Giang', '2026-11-08', 1890000, 'Đang giao'),
    ('DH-2026-007', 'Đỗ Văn Hùng', '2026-11-09', 920000, 'Đã giao'),
    ('DH-2026-008', 'Ngô Thị Lan', '2026-11-10', 2650000, 'Chờ xác nhận');

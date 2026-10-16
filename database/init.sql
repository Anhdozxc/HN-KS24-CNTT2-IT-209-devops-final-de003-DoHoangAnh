-- =============================================================================
--  database/init.sql - Khởi tạo dữ liệu cho đề 003: Quản lý công việc
--  MySQL tự chạy file này ở LẦN KHỞI ĐỘNG ĐẦU TIÊN khi được mount vào
--  /docker-entrypoint-initdb.d/  (database và user do biến MYSQL_* tạo sẵn)
-- =============================================================================
SET NAMES utf8mb4;

USE ptit_job_db;

CREATE TABLE IF NOT EXISTS jobs (
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    job_name        VARCHAR(100) NOT NULL,
    building        VARCHAR(50) NOT NULL,
    capacity        INT NOT NULL,
    equipment       VARCHAR(150) NOT NULL,
    status          VARCHAR(30) NOT NULL,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO jobs (job_name, building, capacity, equipment, status) VALUES
    ('DevOps job', 'A1', 40, 'Công việc máy chủ Dell R740, Switch Cisco', 'Hoạt động'),
    ('Cloud job', 'A1', 35, 'Công việc cụm Proxmox 3 node', 'Hoạt động'),
    ('Network job', 'A2', 30, 'Công việc Router Cisco 4321', 'Bảo trì'),
    ('AI job', 'A3', 25, 'Công việc GPU NVIDIA RTX 4090', 'Hoạt động'),
    ('IoT job', 'A2', 30, 'Công việc Raspberry Pi, Arduino', 'Hoạt động'),
    ('Security job', 'A3', 20, 'Công việc Firewall FortiGate 60F', 'Tạm đóng'),
    ('Mobile job', 'B1', 45, 'Công việc MacBook Pro, iPhone 15', 'Hoạt động'),
    ('Data job', 'B1', 40, 'Công việc Máy trạm HP Z4', 'Hoạt động');

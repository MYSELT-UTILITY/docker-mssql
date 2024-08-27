CREATE DATABASE [dbtest]
GO

USE [dbtest];
GO

CREATE TABLE NhaSanXuat (
    NSX_Ma INT NOT NULL IDENTITY,
    NSX_Ten TEXT NOT NULL,
    NSX_MoTa TEXT,
    NSX_Xoa BIT DEFAULT 0,
    PRIMARY KEY (NSX_Ma)
);
GO

CREATE TABLE DanhMuc (
    DM_Ma INT NOT NULL IDENTITY,
    DM_Ten TEXT NOT NULL,
    DM_MoTa TEXT,
    DM_Xoa BIT DEFAULT 0,
    PRIMARY KEY (DM_Ma)
);
GO

CREATE TABLE SanPham (
    SP_Ma INT NOT NULL IDENTITY,
    SP_Ten TEXT NOT NULL,
    SP_MoTa TEXT,
    SP_DanhMuc INT NOT NULL,
    SP_NhaSanXuat INT,
    SP_GiaNhap INT, 
    SP_GiaBan INT,
    SP_Xoa BIT DEFAULT 0,
    PRIMARY KEY (SP_Ma),
    FOREIGN KEY (SP_DanhMuc) REFERENCES DanhMuc(DM_Ma),
    FOREIGN KEY (SP_NhaSanXuat) REFERENCES NhaSanXuat(NSX_Ma)
);
GO

INSERT INTO [NhaSanXuat] (NSX_Ten, NSX_MoTa)
VALUES 
('Pepsico', ''),
('Cocacola', ''),
('Acecook', ''),
('Vina Acecook', ''); 
GO

INSERT INTO [DanhMuc] (DM_Ten, DM_MoTa)
VALUES 
('Nước ngọt', 'Các loại nước ngọt'),
('Mì gói', 'Các loại mì'); 
GO

INSERT INTO [SanPham] (SP_Ten, SP_MoTa, SP_DanhMuc, SP_NhaSanXuat, SP_GiaNhap, SP_GiaBan)
VALUES 
('Pepsi', '...', 1, 1, 8000, 10000),
('Coca', '...', 1, 2, 8000, 10000),
('Mì Hảo Hảo', '...', 2, 3, 5000, 7000),
('Mì Omachi', '...', 2, 4, 5000, 7000);
GO
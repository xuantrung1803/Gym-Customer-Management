USE [QLGYM1]
GO
/****** Object:  Table [dbo].[DIEMDANH]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEMDANH](
	[MaDD] [nvarchar](50) NOT NULL,
	[MaThe] [nvarchar](50) NOT NULL,
	[SoLan] [nchar](10) NULL,
	[ThoiGian] [date] NULL,
 CONSTRAINT [PK_DIEMDANH_1] PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GOITAP]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GOITAP](
	[MaGoiTap] [nvarchar](50) NOT NULL,
	[MaLop] [nvarchar](50) NOT NULL,
	[TenGoiTap] [nvarchar](200) NULL,
	[ThoiHan] [int] NULL,
	[Gia] [float] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_GOITAP_1] PRIMARY KEY CLUSTERED 
(
	[MaGoiTap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MasoHD] [nvarchar](50) NOT NULL,
	[NgayHD] [date] NULL,
	[MaThe] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MasoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[SDT] [char](10) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[GhiChu] [text] NULL,
	[Anh] [text] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOPDV]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOPDV](
	[MaLop] [nvarchar](50) NOT NULL,
	[TenLop] [nvarchar](200) NULL,
 CONSTRAINT [PK_LOPDV] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SĐT] [char](11) NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[GioiTinh] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN_HOADON]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN_HOADON](
	[NhanVien_MaNV] [varchar](255) NOT NULL,
	[hoaDons_MasoHD] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANQUYEN]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN](
	[MaQuyen] [int] NOT NULL,
	[ChucVu] [nvarchar](100) NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANQUYEN_TAIKHOAN]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANQUYEN_TAIKHOAN](
	[PhanQuyen_MaQuyen] [int] NOT NULL,
	[taiKhoans_Username] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[MaQuyen] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THE]    Script Date: 2/16/2023 2:28:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THE](
	[MaThe] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NOT NULL,
	[MaGoiTap] [nvarchar](50) NOT NULL,
	[NgayDK] [date] NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[Trangthai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_THE] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DIEMDANH] ([MaDD], [MaThe], [SoLan], [ThoiGian]) VALUES (N'DD1', N'T5', N'1         ', CAST(N'2022-04-10' AS Date))
INSERT [dbo].[DIEMDANH] ([MaDD], [MaThe], [SoLan], [ThoiGian]) VALUES (N'DD2', N'T6', N'1         ', CAST(N'2022-06-01' AS Date))
INSERT [dbo].[DIEMDANH] ([MaDD], [MaThe], [SoLan], [ThoiGian]) VALUES (N'DD3', N'T7', N'1         ', CAST(N'2022-06-01' AS Date))
INSERT [dbo].[DIEMDANH] ([MaDD], [MaThe], [SoLan], [ThoiGian]) VALUES (N'DD4', N'T5', N'2         ', CAST(N'2022-06-01' AS Date))
INSERT [dbo].[DIEMDANH] ([MaDD], [MaThe], [SoLan], [ThoiGian]) VALUES (N'DD5', N'T7', N'2         ', CAST(N'2022-06-01' AS Date))
INSERT [dbo].[DIEMDANH] ([MaDD], [MaThe], [SoLan], [ThoiGian]) VALUES (N'DD6', N'T7', N'3         ', CAST(N'2022-06-01' AS Date))
GO
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GT6NG1', N'BX1', N'6 ngày', 6, 360000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTN1', N'BX1', N'năm', 365, 5400000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTN2', N'YG2', N'năm', 365, 7200000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTN3', N'EB3', N'năm', 365, 7200000, 0)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTN4', N'FN4', N'năm', 365, 5400000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTNG1', N'BX1', N'ngày', 1, 15000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTNG2', N'YG2', N'ngày', 1, 20000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTNG3', N'EB3', N'ngày', 1, 20000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTNG4', N'FN4', N'ngày', 1, 15000, 0)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTNG5', N'MA5', N'ngày', 1, 30000, 0)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTT1', N'BX1', N'tuần', 7, 100000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTT2', N'YG2', N'tuần', 7, 130000, 0)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTT3', N'EB3', N'tuần', 7, 130000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTT4', N'FN4', N'tuần', 7, 100000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTT5', N'MA5', N'tuần', 7, 210000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTTH1', N'BX1', N'tháng', 30, 400000, 0)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTTH2', N'YG2', N'tháng', 30, 550000, 0)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTTH3', N'EB3', N'tháng', 30, 550000, 1)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTTH4', N'FN4', N'tháng', 30, 400000, 0)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTTH5', N'MA5', N'tháng', 30, 900000, 0)
INSERT [dbo].[GOITAP] ([MaGoiTap], [MaLop], [TenGoiTap], [ThoiHan], [Gia], [TrangThai]) VALUES (N'GTTH6', N'VM6', N'tháng', 30, 600000, 1)
GO
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD1', CAST(N'2019-02-20' AS Date), N'T1', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD10', CAST(N'2022-05-27' AS Date), N'T10', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD11', CAST(N'2022-06-03' AS Date), N'T12', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD12', CAST(N'2022-12-29' AS Date), N'T13', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD2', CAST(N'2022-01-02' AS Date), N'T2', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD3', CAST(N'2022-01-25' AS Date), N'T3', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD4', CAST(N'2022-02-20' AS Date), N'T4', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD5', CAST(N'2022-04-10' AS Date), N'T5', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD6', CAST(N'2022-05-25' AS Date), N'T6', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD7', CAST(N'2022-05-25' AS Date), N'T7', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD8', CAST(N'2022-05-27' AS Date), N'T8', N'NV1')
INSERT [dbo].[HOADON] ([MasoHD], [NgayHD], [MaThe], [MaNV]) VALUES (N'HD9', CAST(N'2022-05-27' AS Date), N'T9', N'NV1')
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH1', N'Nguyễn Văn Thanh', N'Đồng Tân, tp Thủ Đức', N'thanhnt@gmail.com', N'0953522552', CAST(N'2000-05-26' AS Date), N'Nam', NULL, N'KH1.jpg')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH10', N'Phạm Công Trí', N'97, Man Thiện, tp Thủ Đức, Hồ Chí Minh', N'acde@gmail.com', N'          ', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH11', N'Nguyễn Văn Tâm', N'97, Man Thiện, tp Thủ Đức, Hồ Chí Minh', N'n18dcat052@student.ptithcm.edu.vn', N'0568465225', NULL, N'Nam', NULL, N'KH11.png')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH13', N'Nguyễn Văn Tuấn', N'97, Man Thiện, tp Thủ Đức, Hồ Chí Minh', N'tuannv@gmail.com', N'0985236855', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH14', N'Trần Đặng Khánh Trình', N'97 Man Thiện', N'khanhtrinh2001@gmail.com', N'0981456252', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH15', N'Đỗ Văn Kha', N'97 Man Thiện', N'doxuantrung2000@gmail.com', N'0336221622', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH2', N'Bùi Bích Trâm', N'Man Thiện, tp Thủ Đức', N'trambb@gmail.com', N'0365855455', CAST(N'2001-04-07' AS Date), N'Nữ ', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH3', N'Nguyễn Văn Tiến', N'Nguyễn Bính, quận 11', N'tienn@gmail.com', N'0289554554', CAST(N'1999-03-04' AS Date), N'Nữ', NULL, N'KH3.jpg')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH4', N'Trần Thị Tâm', N'Tôn Thắng, quận 7', N'tamtt@gmail.com', N'0984524545', CAST(N'1988-07-28' AS Date), N'Nữ ', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH7', N'Nguyễn Công Hậu Tú', N'35, Tôn Thất Thuyết, quận Tân Bình', N'nguyenconghautu@gmail.com', N'0981456254', CAST(N'2000-05-12' AS Date), N'Nam', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH8', N'Nguyễn Ngọc Quang', N'97, Man Thiện, tp Thủ Đức, Hồ Chí Minh', N'nguyenngocquang700@gmail.com', N'0857209309', NULL, N'Nam', NULL, NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [NgaySinh], [GioiTinh], [GhiChu], [Anh]) VALUES (N'KH9', N'Hà Minh Quân', N'97, Man Thiện, tp Thủ Đức, Hồ Chí Minh', N'q5ca@protonmail.com', N'23232     ', NULL, N'Nam', NULL, NULL)
GO
INSERT [dbo].[LOPDV] ([MaLop], [TenLop]) VALUES (N'BX1', N'boxing')
INSERT [dbo].[LOPDV] ([MaLop], [TenLop]) VALUES (N'EB3', N'aerobic')
INSERT [dbo].[LOPDV] ([MaLop], [TenLop]) VALUES (N'FN4', N'fitness')
INSERT [dbo].[LOPDV] ([MaLop], [TenLop]) VALUES (N'MA5', N'MMA')
INSERT [dbo].[LOPDV] ([MaLop], [TenLop]) VALUES (N'VM6', N'vovinam')
INSERT [dbo].[LOPDV] ([MaLop], [TenLop]) VALUES (N'YG2', N'yoga')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Email], [SĐT], [DiaChi], [GioiTinh], [Username]) VALUES (N'NV1', N'Đỗ Xuân Trung', N'doxuantrung20000@gmail.com', N'0357686072 ', N'Man Thiện, tp Thủ Đức', N'Nam', N'XuanTrung')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Email], [SĐT], [DiaChi], [GioiTinh], [Username]) VALUES (N'NV2', N'Lệnh Hà Bảo Trọng', N'tronglhb@gmail.com', N'0984561444 ', N'Lãng Xuân Mai, tp Thủ Đức', N'Nam', N'BaoTrong')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Email], [SĐT], [DiaChi], [GioiTinh], [Username]) VALUES (N'NV3', N'Lê Phước Anh Đạt', N'datlpa@gmail.com', N'0984562255 ', N'Tô Thành, quận 3', N'Nam', N'AnhDat')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Email], [SĐT], [DiaChi], [GioiTinh], [Username]) VALUES (N'NV4', N'Nguyễn Văn Tuấn', N'tuannv@gmail.com', N'09851852215', N'97, Man Thiện, tp Thủ Đức, Hồ Chí Minh', N'Nam', N'Tuan')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Email], [SĐT], [DiaChi], [GioiTinh], [Username]) VALUES (N'NV5', N'Phạm Công Trí', N'nguyenconghautu@gmail.com', N'085452552  ', N'97, Man Thiện, tp Thủ Đức, Hồ Chí Minh', N'Nam', N'Tri')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [Email], [SĐT], [DiaChi], [GioiTinh], [Username]) VALUES (N'NV6', N'Đỗ Tâm', N'dotam@gmail.com', N'0951567221 ', N'Nguyễn Bính, quận 11', N'Nữ', N'Tam')
GO
INSERT [dbo].[PHANQUYEN] ([MaQuyen], [ChucVu]) VALUES (0, N'Chủ tịch')
INSERT [dbo].[PHANQUYEN] ([MaQuyen], [ChucVu]) VALUES (1, N'Nhân viên')
GO
INSERT [dbo].[TAIKHOAN] ([Username], [Password], [MaQuyen], [TrangThai]) VALUES (N'AnhDat', N'u+X+On2XQDymkX7xtpuohQ==', 1, 1)
INSERT [dbo].[TAIKHOAN] ([Username], [Password], [MaQuyen], [TrangThai]) VALUES (N'BaoTrong', N'u+X+On2XQDymkX7xtpuohQ==', 1, 1)
INSERT [dbo].[TAIKHOAN] ([Username], [Password], [MaQuyen], [TrangThai]) VALUES (N'root', N'u+X+On2XQDymkX7xtpuohQ==', 0, 1)
INSERT [dbo].[TAIKHOAN] ([Username], [Password], [MaQuyen], [TrangThai]) VALUES (N'Tam', N'u+X+On2XQDymkX7xtpuohQ==', 1, 1)
INSERT [dbo].[TAIKHOAN] ([Username], [Password], [MaQuyen], [TrangThai]) VALUES (N'ThanhNam', N'u+X+On2XQDymkX7xtpuohQ==', 0, 1)
INSERT [dbo].[TAIKHOAN] ([Username], [Password], [MaQuyen], [TrangThai]) VALUES (N'Tri', N'u+X+On2XQDymkX7xtpuohQ==', 1, 1)
INSERT [dbo].[TAIKHOAN] ([Username], [Password], [MaQuyen], [TrangThai]) VALUES (N'Tuan', N'u+X+On2XQDymkX7xtpuohQ==', 1, 1)
INSERT [dbo].[TAIKHOAN] ([Username], [Password], [MaQuyen], [TrangThai]) VALUES (N'XuanTrung', N'u+X+On2XQDymkX7xtpuohQ==', 0, 1)
GO
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T1', N'KH1', N'GTNG4', CAST(N'2019-02-20' AS Date), CAST(N'2019-02-20' AS Date), CAST(N'2019-02-21' AS Date), N'Hết Hạn')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T10', N'KH8', N'GTTH3', CAST(N'2022-05-27' AS Date), NULL, NULL, N'Hoạt Động')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T11', N'KH10', N'GTT3', CAST(N'2022-06-01' AS Date), NULL, NULL, N'Chưa Thanh Toán')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T12', N'KH11', N'GTT1', CAST(N'2022-06-03' AS Date), NULL, NULL, N'Hoạt Động')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T13', N'KH14', N'GT6NG1', CAST(N'2022-12-29' AS Date), NULL, NULL, N'Hoạt Động')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T2', N'KH2', N'GTT2', CAST(N'2022-01-02' AS Date), CAST(N'2022-01-02' AS Date), CAST(N'2022-01-09' AS Date), N'Hết Hạn')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T3', N'KH3', N'GTT3', CAST(N'2022-01-25' AS Date), CAST(N'2022-01-26' AS Date), CAST(N'2022-02-02' AS Date), N'Hết Hạn')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T4', N'KH4', N'GTTH1', CAST(N'2022-02-20' AS Date), CAST(N'2022-02-21' AS Date), CAST(N'2021-03-21' AS Date), N'Hết Hạn')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T5', N'KH3', N'GTN4', CAST(N'2022-04-10' AS Date), CAST(N'2022-04-10' AS Date), CAST(N'2022-04-10' AS Date), N'Hết Hạn')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T6', N'KH1', N'GTTH1', CAST(N'2022-05-25' AS Date), CAST(N'2022-06-01' AS Date), CAST(N'2022-07-01' AS Date), N'Hết Hạn')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T7', N'KH2', N'GTTH2', CAST(N'2022-05-25' AS Date), CAST(N'2022-06-01' AS Date), CAST(N'2022-07-01' AS Date), N'Hết Hạn')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T8', N'KH7', N'GTT4', CAST(N'2022-05-27' AS Date), CAST(N'2022-05-28' AS Date), CAST(N'2022-06-04' AS Date), N'Hết Hạn')
INSERT [dbo].[THE] ([MaThe], [MaKH], [MaGoiTap], [NgayDK], [NgayBD], [NgayKT], [Trangthai]) VALUES (N'T9', N'KH9', N'GTTH1', CAST(N'2022-05-27' AS Date), NULL, NULL, N'Hoạt Động')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_HOADON]    Script Date: 2/16/2023 2:28:56 PM ******/
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [Unique_HOADON] UNIQUE NONCLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_kjt6m60s40de8k310wpq5ben0]    Script Date: 2/16/2023 2:28:56 PM ******/
ALTER TABLE [dbo].[NHANVIEN_HOADON] ADD  CONSTRAINT [UK_kjt6m60s40de8k310wpq5ben0] UNIQUE NONCLUSTERED 
(
	[hoaDons_MasoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_sjig3ahb1dyevrwvxphio6miw]    Script Date: 2/16/2023 2:28:56 PM ******/
ALTER TABLE [dbo].[PHANQUYEN_TAIKHOAN] ADD  CONSTRAINT [UK_sjig3ahb1dyevrwvxphio6miw] UNIQUE NONCLUSTERED 
(
	[taiKhoans_Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GOITAP] ADD  CONSTRAINT [DF_GOITAP_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[DIEMDANH]  WITH CHECK ADD  CONSTRAINT [FK_DIEMDANH_THE] FOREIGN KEY([MaThe])
REFERENCES [dbo].[THE] ([MaThe])
GO
ALTER TABLE [dbo].[DIEMDANH] CHECK CONSTRAINT [FK_DIEMDANH_THE]
GO
ALTER TABLE [dbo].[DIEMDANH]  WITH CHECK ADD  CONSTRAINT [FK2xht9hltjlpwby863f6q5ffer] FOREIGN KEY([MaThe])
REFERENCES [dbo].[THE] ([MaThe])
GO
ALTER TABLE [dbo].[DIEMDANH] CHECK CONSTRAINT [FK2xht9hltjlpwby863f6q5ffer]
GO
ALTER TABLE [dbo].[GOITAP]  WITH CHECK ADD  CONSTRAINT [FKbp3vxj5xu5ondksb9w2atgfwb] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOPDV] ([MaLop])
GO
ALTER TABLE [dbo].[GOITAP] CHECK CONSTRAINT [FKbp3vxj5xu5ondksb9w2atgfwb]
GO
ALTER TABLE [dbo].[GOITAP]  WITH CHECK ADD  CONSTRAINT [FKdi81g9d8evbb7etpu8mcx7ro7] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOPDV] ([MaLop])
GO
ALTER TABLE [dbo].[GOITAP] CHECK CONSTRAINT [FKdi81g9d8evbb7etpu8mcx7ro7]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_THE] FOREIGN KEY([MaThe])
REFERENCES [dbo].[THE] ([MaThe])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_THE]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FKkl0ayrbddex894r4ar5yu5twp] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FKkl0ayrbddex894r4ar5yu5twp]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FKq7uqpo4tmkqaujwevsvceaceq] FOREIGN KEY([MaThe])
REFERENCES [dbo].[THE] ([MaThe])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FKq7uqpo4tmkqaujwevsvceaceq]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FKqhyfkqp396i0yg8v350gibv7h] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FKqhyfkqp396i0yg8v350gibv7h]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([Username])
REFERENCES [dbo].[TAIKHOAN] ([Username])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FKrsqx1rue7hw8m76m7ww4xebvf] FOREIGN KEY([Username])
REFERENCES [dbo].[TAIKHOAN] ([Username])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FKrsqx1rue7hw8m76m7ww4xebvf]
GO
ALTER TABLE [dbo].[PHANQUYEN_TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK14knb1xye2y84d2e9rirmmbm4] FOREIGN KEY([PhanQuyen_MaQuyen])
REFERENCES [dbo].[PHANQUYEN] ([MaQuyen])
GO
ALTER TABLE [dbo].[PHANQUYEN_TAIKHOAN] CHECK CONSTRAINT [FK14knb1xye2y84d2e9rirmmbm4]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_PHANQUYEN] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PHANQUYEN] ([MaQuyen])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_PHANQUYEN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FKepry8ikqfop2ylr5k5leotdiy] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PHANQUYEN] ([MaQuyen])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FKepry8ikqfop2ylr5k5leotdiy]
GO
ALTER TABLE [dbo].[THE]  WITH CHECK ADD  CONSTRAINT [FK_THE_GOITAP] FOREIGN KEY([MaGoiTap])
REFERENCES [dbo].[GOITAP] ([MaGoiTap])
GO
ALTER TABLE [dbo].[THE] CHECK CONSTRAINT [FK_THE_GOITAP]
GO
ALTER TABLE [dbo].[THE]  WITH CHECK ADD  CONSTRAINT [FK_THE_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[THE] CHECK CONSTRAINT [FK_THE_KHACHHANG]
GO
ALTER TABLE [dbo].[THE]  WITH CHECK ADD  CONSTRAINT [FK2jkn3n0h5dmv5jf1q9h1c6vh9] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[THE] CHECK CONSTRAINT [FK2jkn3n0h5dmv5jf1q9h1c6vh9]
GO
ALTER TABLE [dbo].[THE]  WITH CHECK ADD  CONSTRAINT [FK4un5kspxsxlqbucbvgg0kboi4] FOREIGN KEY([MaGoiTap])
REFERENCES [dbo].[GOITAP] ([MaGoiTap])
GO
ALTER TABLE [dbo].[THE] CHECK CONSTRAINT [FK4un5kspxsxlqbucbvgg0kboi4]
GO
ALTER TABLE [dbo].[THE]  WITH CHECK ADD  CONSTRAINT [FKahfpy15g1iunufoxvmmbjqggx] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[THE] CHECK CONSTRAINT [FKahfpy15g1iunufoxvmmbjqggx]
GO
ALTER TABLE [dbo].[THE]  WITH CHECK ADD  CONSTRAINT [FKgq0hi0bc3ylplutw23x3n3wyp] FOREIGN KEY([MaGoiTap])
REFERENCES [dbo].[GOITAP] ([MaGoiTap])
GO
ALTER TABLE [dbo].[THE] CHECK CONSTRAINT [FKgq0hi0bc3ylplutw23x3n3wyp]
GO
ALTER TABLE [dbo].[GOITAP]  WITH CHECK ADD  CONSTRAINT [CK_GOITAP_TRANGTHAI] CHECK  (([TrangThai]=(1) OR [TrangThai]=(0)))
GO
ALTER TABLE [dbo].[GOITAP] CHECK CONSTRAINT [CK_GOITAP_TRANGTHAI]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [CK_TrangThai] CHECK  (([TrangThai]=(1) OR [TrangThai]=(0)))
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [CK_TrangThai]
GO

create database ASMJAVA0003
go

use ASMJAVA0003
		go

-- tạo bảng USERS
create table USERS(
    username nvarchar(50) primary key,
	passwords nvarchar(50),
	roles nvarchar(50)
)
go

-- Thêm dữ liệu cho USERS
  insert into USERS values(N'Linh','123','admin')
  insert into USERS values(N'Nhat','123','admin')
  insert into USERS values(N'Nguyen','123','user')



-- Tạo bảng STUDENTS
create table STUDENTS(
     MaSV nvarchar(50) primary key,
	 HoTen nvarchar(40),
	 Email nvarchar(50),
	 SoDT nvarchar(15),
	 GioiTinh bit,
	 DiaChi nvarchar(50),
	 Hinh nvarchar(50)
)

-- Thêm dữ liệu vào bảng STUDENTS

   insert into STUDENTS values('SV001', N'Nguyễn NHật Linh', 'linh123@fpt.edu.vn', '0972536178', 0,N'12 Tô Ký', 'anh.jpg')
   insert into STUDENTS values('SV002', N'Lê Hải Anh', 'anh123@fpt.edu.vn', '0954368991', 1,N'55 Phạm Văn Đồng', 'tuan.jpg')
   insert into STUDENTS values('SV003', N'Nguyễn Thế Sang', 'sang123@fpt.edu.vn', '07542875397', 1,N'Hà Nội', 'an.jpg')
   insert into STUDENTS values('SV004', N'Mai Huỳnh Duy An', 'an123@fpt.edu.vn', '0976489532', 0,N'Bình Tân', 'anh.jpg')
   insert into STUDENTS values('SV005', N'Huỳnh Chánh Trung', 'trung123@fpt.edu.vn', '0765356782', 0,N'Vũng Tàu', 'vi.jpg')

   select * from STUDENTS

-- Tạo bảng GRADE
create table GRADE(
    ID int identity(1,1) primary key,
	MaSV nvarchar(50) references STUDENTS(MaSV),
	TiengAnh int,
	TinHoc int,
	GDTC int,
)

insert into GRADE values('SV001',5,7,9)
insert into GRADE values('SV002',8,7,8)
insert into GRADE values('SV003',9,10,9)
insert into GRADE values('SV004',9,7,8)
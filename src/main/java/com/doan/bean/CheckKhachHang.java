package com.doan.bean;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

public class CheckKhachHang {
	@NotBlank(message = "Không được để trống họ và tên")
	private String tenKH;

	@NotBlank(message = "Không được để trống ngày sinh")
	private String ngaySinh;

	@NotBlank(message = "Không được để trống email")
	@Email(message = "Email không hợp lệ")
	private String email;

	@NotBlank(message = "Không được để trống số điện thoại")
	private String sdt;

	private String diaChi;

	private String gioiTinh;

	private String anh;

	public CheckKhachHang(String hoVaTen, String ngaySinh, String email, String sdt, String diaChi, String gioiTinh,
			String anh) {
		super();
		this.tenKH = hoVaTen;
		this.ngaySinh = ngaySinh;
		this.email = email;
		this.sdt = sdt;
		this.diaChi = diaChi;
		this.gioiTinh = gioiTinh;
		this.anh = anh;
	}

	public String getTenKH() {
		return tenKH;
	}

	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public CheckKhachHang() {
		super();
	}

	public String getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

}

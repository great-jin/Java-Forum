package com.blog.domain;

public class User {
private String UName,UPwd,UGender,UTel,UVocation;
private int UAge,UId;
public String getUName() {
	return UName;
}
public void setUName(String uName) {
	UName = uName;
}
public String getUPwd() {
	return UPwd;
}
public void setUPwd(String uPwd) {
	UPwd = uPwd;
}
public String getUGender() {
	return UGender;
}
public void setUGender(String uGender) {
	UGender = uGender;
}
public String getUTel() {
	return UTel;
}
public void setUTel(String uTel) {
	UTel = uTel;
}
public String getUVocation() {
	return UVocation;
}
public void setUVocation(String uVocation) {
	UVocation = uVocation;
}
public int getUAge() {
	return UAge;
}
public void setUAge(int uAge) {
	UAge = uAge;
}
public int getUId() {
	return UId;
}
public void setUId(int uId) {
	UId = uId;
}
@Override
public String toString() {
	return "User [UName=" + UName + ", UPwd=" + UPwd + ", UGender=" + UGender + ", UTel=" + UTel + ", UVocation="
			+ UVocation + ", UAge=" + UAge + ", UId=" + UId + "]";
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}
public User(String uName, String uPwd, String uGender, String uTel, String uVocation, int uAge, int uId) {
	super();
	UName = uName;
	UPwd = uPwd;
	UGender = uGender;
	UTel = uTel;
	UVocation = uVocation;
	UAge = uAge;
	UId = uId;
}
public User(String uName, String uPwd, String uGender, String uTel, String uVocation, int uAge) {
	super();
	UName = uName;
	UPwd = uPwd;
	UGender = uGender;
	UTel = uTel;
	UVocation = uVocation;
	UAge = uAge;
}

}

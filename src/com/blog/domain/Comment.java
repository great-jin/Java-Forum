package com.blog.domain;

public class Comment {
private int  CId;
private int CUId;
private int CArticleId;
private String CTime;
private String CContent;
public int getCId() {
	return CId;
}
public void setCId(int cId) {
	CId = cId;
}
public int getCUid() {
	return CUId;
}
public void setCUid(int cUid) {
	CUId = cUid;
}
public int getCArticleId() {
	return CArticleId;
}
public void setCArticleId(int cArticleId) {
	CArticleId = cArticleId;
}
public String getCTime() {
	return CTime;
}
public void setCTime(String cTime) {
	CTime = cTime;
}
public String getCContent() {
	return CContent;
}
public void setCContent(String cContent) {
	CContent = cContent;
}
@Override
public String toString() {
	return "Comment [CId=" + CId + ", CUId=" + CUId + ", CArticleId=" + CArticleId + ", CTime=" + CTime + ", CContent="
			+ CContent + "]";
}
public Comment(int cId, int cUid, int cArticleId, String cTime, String cContent) {
	super();
	CId = cId;
	CUId = cUid;
	CArticleId = cArticleId;
	CTime = cTime;
	CContent = cContent;
}
public Comment() {
	super();
	// TODO Auto-generated constructor stub
}


}

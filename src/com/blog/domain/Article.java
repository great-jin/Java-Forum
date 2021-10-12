package com.blog.domain;

public class Article {
	private String AAuthor, ACategory, ATime, AHead, AContent;
	private int AID, AUId, AIsOrigin;

	public String getAAuthor() {
		return AAuthor;
	}

	public void setAAuthor(String aAuthor) {
		AAuthor = aAuthor;
	}

	public String getACategory() {
		return ACategory;
	}

	public void setACategory(String aCategory) {
		ACategory = aCategory;
	}

	public String getATime() {
		return ATime;
	}

	public void setATime(String aTime) {
		ATime = aTime;
	}

	public String getAHead() {
		return AHead;
	}

	public void setAHead(String aHead) {
		AHead = aHead;
	}

	public String getAContent() {
		return AContent;
	}

	public void setAContent(String aContent) {
		AContent = aContent;
	}

	public int getAID() {
		return AID;
	}

	public void setAID(int aID) {
		AID = aID;
	}

	public int getAUId() {
		return AUId;
	}

	public void setAUId(int aUId) {
		AUId = aUId;
	}

	public int getAIsOrigin() {
		return AIsOrigin;
	}

	public void setAIsOrigin(int aIsOrigin) {
		AIsOrigin = aIsOrigin;
	}

	public Article(String aAuthor, String aCategory, String aTime, String aHead, String aContent, int aID, int aUId,
			int aIsOrigin) {
		super();
		AAuthor = aAuthor;
		ACategory = aCategory;
		ATime = aTime;
		AHead = aHead;
		AContent = aContent;
		AID = aID;
		AUId = aUId;
		AIsOrigin = aIsOrigin;
	}

	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}

}

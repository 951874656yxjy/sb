package org.fkit.ebuy.domain;

public class Picture {
 private int id;
private String image1;
 private String type;
 private String image2;
 private String image3;
 private String image4;
 private String image5;
 private String image6;
 private String image7;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}



public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}
@Override
public String toString() {
	return "Picture [id="+ id + " ,type="+ type + ",image1=" +image1 + ", image2=" +image2 + ",image3=" +image3 + ",image4=" +image4 + ",image5=" +image5 + ",image6=" +image6 + ",image7=" +image7 + "]";
}

public String getImage2() {
	return image2;
}

public void setImage2(String image2) {
	this.image2 = image2;
}

public String getImage3() {
	return image3;
}

public void setImage3(String image3) {
	this.image3 = image3;
}

public String getImage4() {
	return image4;
}

public void setImage4(String image4) {
	this.image4 = image4;
}

public String getImage5() {
	return image5;
}

public void setImage5(String image5) {
	this.image5 = image5;
}

public String getImage6() {
	return image6;
}

public void setImage6(String image6) {
	this.image6 = image6;
}

public String getImage7() {
	return image7;
}

public void setImage7(String image7) {
	this.image7 = image7;
}

public String getImage1() {
	return image1;
}

public void setImage1(String image1) {
	this.image1 = image1;
}
}

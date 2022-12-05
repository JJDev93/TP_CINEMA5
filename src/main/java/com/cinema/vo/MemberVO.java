package com.cinema.vo;

import java.util.Date;

public class MemberVO {
   
   private String id, pass, name , lev ,gender, email , phone ,birth;
   private Date regdate;
public String getId() {
   return id;
}
public void setId(String id) {
   this.id = id;
}
public String getPass() {
   return pass;
}
public void setPass(String pass) {
   this.pass = pass;
}
public String getName() {
   return name;
}
public void setName(String name) {
   this.name = name;
}
public String getLev() {
   return lev;
}
public void setLev(String lev) {
   this.lev = lev;
}
public String getGender() {
   return gender;
}
public void setGender(String gender) {
   this.gender = gender;
}
public String getEmail() {
   return email;
}
public void setEmail(String email) {
   this.email = email;
}
public String getPhone() {
   return phone;
}
public void setPhone(String phone) {
   this.phone = phone;
}
public String getBirth() {
   return birth;
}
public void setBirth(String birth) {
   this.birth = birth;
}
public Date getRegdate() {
   return regdate;
}
public void setRegdate(Date regdate) {
   this.regdate = regdate;
}
@Override
public String toString() {
   return "MemberVO [id=" + id + ", pass=" + pass + ", name=" + name + ", lev=" + lev + ", gender=" + gender
         + ", email=" + email + ", phone=" + phone + ", birth=" + birth + ", regdate=" + regdate + "]";
}
   
   
}
public class Member 
{
 private String name,contact,street;
 
 public Member() {
 super();
 }
 
 public Member(String name, String contact, String street) {
 super();
 this.name = name;
 this.contact = contact;
 this.street = street;
 }
 
 public String getName() {
 return name;
 }
 
 public void setFname(String name) {
 this.name = name;
 }
 
 public String getContact() {
 return contact;
 }
 
 public void setContact(String contact) {
 this.contact = contact;
 }
 
 public String getStreet() {
	 return street;
 }
 
 public void setStreet(String street) {
	 this.street = street;
 }
 
}
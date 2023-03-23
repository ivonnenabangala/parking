
public class Vehicle {
	private String vehicleType,plateNo;
	public Vehicle() {
		 super();
		 }
	public Vehicle(String vehicleType, String plateNo) {
		 super();
		 this.vehicleType = vehicleType;
		 this.plateNo = plateNo;
		 }
	
	public String getvehicleType() {
		 return vehicleType;
		 }
		 
		 public void setVehicleType(String vehicleType) {
		 this.vehicleType = vehicleType;
		 }
		 
		 public String getPlateNo() {
		 return plateNo;
		 }
		 
		 public void setPlateNo(String plateNo) {
		 this.plateNo = plateNo;
		 }
}

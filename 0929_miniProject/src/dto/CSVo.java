package dto;

public class CSVo {
	private int csid;
	private String csnm;
	private String addr;
	private double lat;
	private double longi;
	
	public CSVo() {
		// TODO Auto-generated constructor stub
	}
	
	public CSVo(int csid, String csnm, String addr, double lat, double longi) {
		super();
		this.csid = csid;
		this.csnm = csnm;
		this.addr = addr;
		this.lat = lat;
		this.longi = longi;
	}

	public int getCsid() {
		return csid;
	}

	public void setCsid(int csid) {
		this.csid = csid;
	}

	public String getCsnm() {
		return csnm;
	}

	public void setCsnm(String csnm) {
		this.csnm = csnm;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLongi() {
		return longi;
	}

	public void setLongi(double longi) {
		this.longi = longi;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CSVo [csid=");
		builder.append(csid);
		builder.append(", csnm=");
		builder.append(csnm);
		builder.append(", addr=");
		builder.append(addr);
		builder.append(", lat=");
		builder.append(lat);
		builder.append(", longi=");
		builder.append(longi);
		builder.append("]");
		return builder.toString();
	}
	
}

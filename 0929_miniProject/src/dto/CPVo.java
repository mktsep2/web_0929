package dto;

public class CPVo {
	private int cpid;
	private int chargetp;
	private String cpnm;
	private int cpstat;
	private int cptp;
	private int csid;
	private String userId;
	
	public CPVo() {
		super();
	}
	public CPVo(int cpid, int chargetp, String cpnm, int cpstat, int cptp, int csid, String userId) {
		super();
		this.cpid = cpid;
		this.chargetp = chargetp;
		this.cpnm = cpnm;
		this.cpstat = cpstat;
		this.cptp = cptp;
		this.csid = csid;
		this.userId = userId;
	}

	public int getCpid() {
		return cpid;
	}
	public void setCpid(int cpid) {
		this.cpid = cpid;
	}
	public int getChargetp() {
		return chargetp;
	}
	public void setChargetp(int chargetp) {
		this.chargetp = chargetp;
	}
	public String getCpnm() {
		return cpnm;
	}
	public void setCpnm(String cpnm) {
		this.cpnm = cpnm;
	}
	public int getCpstat() {
		return cpstat;
	}
	public void setCpstat(int cpstat) {
		this.cpstat = cpstat;
	}
	public int getCptp() {
		return cptp;
	}
	public void setCptp(int cptp) {
		this.cptp = cptp;
	}
	public int getCsid() {
		return csid;
	}
	public void setCsid(int csid) {
		this.csid = csid;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CPVo [cpid=");
		builder.append(cpid);
		builder.append(", chargetp=");
		builder.append(chargetp);
		builder.append(", cpnm=");
		builder.append(cpnm);
		builder.append(", cpstat=");
		builder.append(cpstat);
		builder.append(", cptp=");
		builder.append(cptp);
		builder.append(", csid=");
		builder.append(csid);
		builder.append(", userId=");
		builder.append(userId);
		builder.append("]");
		return builder.toString();
	}
	
}

package donation.utdallas.com;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class Book extends Item implements Action {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7832224940811364530L;
	private String bname;
	private String aname;
	private int quantity;
	private String dname;
	private String contact;
	private List list;

	public String execute() throws Exception {

		CreateDatabase conn = new CreateDatabase();
		conn.connect();
		if (bname == null) {
			list = conn.retrieveBookInfo();
			return "success";

		}

		conn.insertBook(bname, quantity, aname, dname, contact);
		list = conn.retrieveBookInfo();
		return "success";
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

}

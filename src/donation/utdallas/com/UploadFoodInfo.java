package donation.utdallas.com;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class UploadFoodInfo extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7832224940811364530L;
	private String name;
	private int quantity;
	private String dname;
	private String contact;
	private List list;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String execute() throws Exception {

		CreateDatabase conn = new CreateDatabase();
		conn.connect();
		if (name == null) {
			list = conn.retrieveFoodInfo();
			return "success";

		}

		conn.insertFood(name, quantity, dname, contact);
		list = conn.retrieveFoodInfo();
		return "success";
	}

}

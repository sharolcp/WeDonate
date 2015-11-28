package donation.utdallas.com;

import java.util.List;

public class GarageSale extends Item implements Action {

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

	@Override
	public String execute() throws Exception {
		CreateDatabase conn = new CreateDatabase();
		conn.connect();
		if (name == null) {
			list = conn.retrieveMiscInfo();
			return "success";

		}

		conn.insertMisc(name, quantity, dname, contact);
		list = conn.retrieveMiscInfo();
		return "success";
	}

}

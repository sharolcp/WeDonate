package donation.utdallas.com;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class Wishlist extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7832224940811364530L;
	private String category;
	private String iname;
	private String aname;
	private int quantity;
	private List list;

	public String execute() throws Exception {

		CreateDatabase conn = new CreateDatabase();
		conn.connect();
		if (iname == null) {
			list = conn.retrieveWishInfo();
			return "success";

		}

		conn.insertWish(category, iname, aname, quantity);
		list = conn.retrieveWishInfo();
		return "success";
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getIname() {
		return iname;
	}

	public void setIname(String iname) {
		this.iname = iname;
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

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}

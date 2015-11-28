package donation.utdallas.com;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class Event extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7832224940811364530L;
	private String name;
	private String volunteer;
	private String oname;
	private String time;
	private String place;
	private String contact;
	private String eventLink;
	private List list;

	public String execute() throws Exception {

		CreateDatabase conn = new CreateDatabase();
		conn.connect();
		if (name == null) {
			list = conn.retrieveEventInfo();
			return "success";

		}

		conn.insertEvent(name, volunteer, oname, time, place, contact,
				eventLink);
		list = conn.retrieveEventInfo();
		return "success";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVolunteer() {
		return volunteer;
	}

	public void setVolunteer(String volunteer) {
		this.volunteer = volunteer;
	}

	public String getOname() {
		return oname;
	}

	public void setOname(String oname) {
		this.oname = oname;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEventLink() {
		return eventLink;
	}

	public void setEventLink(String eventLink) {
		this.eventLink = eventLink;
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

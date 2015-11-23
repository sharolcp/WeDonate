package donation.utdallas.com;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class SearchBlood extends ActionSupport {
	private String bloodGroup;
	private List user;

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public List getUser() {
		return user;
	}

	public void setUser(List user) {
		this.user = user;
	}

	public String execute() throws Exception {
		CreateDatabase conn = new CreateDatabase();
		conn.connect();
		user = conn.searchBlood(bloodGroup);
		// for (int i = 0; i < user.size(); i++)
		// name = (((UploadUserInfo) user.get(i)).getName());

		return "success";
	}

}

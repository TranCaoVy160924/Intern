package dxc.assignment.security;

import java.io.Serializable;
import java.security.Principal;

// Principal to store the the jwt get from api on login
public class CustomPrincipal implements Principal, Serializable {
	private String name;
	private String jwtToken;

	public CustomPrincipal(String name, String jwtToken) {
		super();
		this.name = name;
		this.jwtToken = jwtToken;
	}

	public String getName() {
		return name;
	}

	public String getJwtToken() {
		return jwtToken;
	}
}

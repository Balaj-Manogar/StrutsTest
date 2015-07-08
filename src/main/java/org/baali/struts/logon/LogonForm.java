`package org.baali.struts.logon;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class LogonForm extends ActionForm
{
	private String username = null;
	private String password = null;
	
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest req)
	{
		ActionErrors errors = new ActionErrors();
		if(username == null || username.length() < 1)
		{
			System.out.println("Validating....");
			errors.add(this.username, new ActionMessage("error.username.required"));
		}
		if(password == null || password.length() < 1)
		{
			errors.add(this.password, new ActionMessage("error.password.required"));
		}
		return errors;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
}

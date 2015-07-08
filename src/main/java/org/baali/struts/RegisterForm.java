package org.baali.struts;

import org.apache.struts.action.ActionForm;

public class RegisterForm extends ActionForm
{
	protected String userName;
	protected String password1;
	protected String password2;
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getPassword1()
	{
		return password1;
	}
	public void setPassword1(String password1)
	{
		this.password1 = password1;
	}
	public String getPassword2()
	{
		return password2;
	}
	public void setPassword2(String password2)
	{
		this.password2 = password2;
	}
	
	
}

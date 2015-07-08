package org.baali.struts.logon;

import org.apache.struts.validator.ValidatorForm;

public class ValidationUserForm extends ValidatorForm
{
	private String username;
	private int age;
	private String email;
	private int telephone;
	
	public int getTelephone()
	{
		return telephone;
	}
	public void setTelephone(int telephone)
	{
		this.telephone = telephone;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public int getAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}

}

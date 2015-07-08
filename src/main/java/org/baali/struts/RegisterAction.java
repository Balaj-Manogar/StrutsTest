package org.baali.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.w3c.dom.UserDataHandler;

public class RegisterAction extends Action
{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
	{
		RegisterForm rf = (RegisterForm) form;
		String name = rf.getUserName();
		String pass1 = rf.getPassword1();
		String pass2 = rf.getPassword2();
		
		if(pass1.equals(pass2))
		{
			return mapping.findForward("success");
		}
		else
		{
			return mapping.findForward("failure");
		}
		
	}
}

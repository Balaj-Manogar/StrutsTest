package org.baali.struts.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LogonAction extends Action
{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res)
	{
		LogonForm af = (LogonForm) form;
		String username = af.getUsername();
		String password = af.getPassword();
		if(username.equals("asd") && password.equals("asd"))
		{
			HttpSession session = req.getSession();
			session.setAttribute("user", form);
			//System.out.println("INPUT ATTR: " + mapping.getInput());
			return mapping.findForward("welcome");
		}
		return mapping.findForward("loginAgain");
	}

}

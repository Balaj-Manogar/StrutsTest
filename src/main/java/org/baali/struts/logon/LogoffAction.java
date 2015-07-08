package org.baali.struts.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.omg.CORBA.Request;

public class LogoffAction extends Action
{
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest req, HttpServletResponse resl)
	{
		HttpSession session = req.getSession();
		LogonForm user = (LogonForm) session.getAttribute("user");
		
		if(user != null )
		{
			session.removeAttribute("user");
			session.invalidate();
			return mapping.findForward("success");
		}
		else
		{
			return mapping.findForward("failure");
		}
	}
}

package org.baali.struts.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class DuplicateLogOnIdentifierAction extends Action
{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
	{
		if(isTokenValid(request))
		{
			System.out.println("Valid form submission");
			resetToken(request);
			return mapping.findForward("success");
		}
		else
		{
			System.out.println("Duplicate form submitted...");
			return mapping.findForward("duplicate");
		}
	}

}

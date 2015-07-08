package org.baali.struts.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class ActionFromForward extends Action
{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
	{
		
		
		System.out.println("-------------------------------------------");
		System.out.println("\t proceesing action request");
		System.out.println("-------------------------------------------");
		
		return mapping.findForward("success");
	}

}

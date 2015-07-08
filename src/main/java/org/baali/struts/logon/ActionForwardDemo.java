package org.baali.struts.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class ActionForwardDemo extends Action
{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res)
	{
		ActionForward af = mapping.findForward("forward");
		String path = af.getPath().toString() + "/forward.jsp?name=Rajan";
		return new ActionForward(path);
	}

}

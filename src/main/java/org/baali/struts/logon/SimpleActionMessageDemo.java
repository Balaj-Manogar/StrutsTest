package org.baali.struts.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public class SimpleActionMessageDemo extends Action
{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest req, HttpServletResponse res)
	{
		ActionMessages messages = new ActionMessages();
		ActionMessage greet = new ActionMessage("action.message.greeting");
		messages.add("greeting", greet);
		messages.add("bye", new ActionMessage("action.message.bye"));
		saveMessages(req, messages);
		return new ActionForward("/forward/action-messages.jsp");
	}

}

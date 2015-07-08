package org.baali.struts.logon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.Globals;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public class ActionErrorsDemo extends Action
{
	public ActionForward execute(ActionMapping mapping,ActionForm form,
	        HttpServletRequest request, HttpServletResponse response)
	                throws Exception {
			ActionMessages messages = new ActionMessages();
			ActionErrors errors = new ActionErrors();
			messages.add(Globals.MESSAGE_KEY, 
			       new ActionMessage("global.message.name"));
			messages.add("message2", 
				       new ActionMessage("error.password"));
			
			saveMessages(request,messages);
			errors.add(messages);
			return new ActionForward("/forward/messages.jsp");
	    }

}

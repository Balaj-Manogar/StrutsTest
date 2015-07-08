package org.baali.struts.logon;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.LookupDispatchAction;

public class LookupDispatchActionDemo extends LookupDispatchAction
{

	@Override
	protected Map getKeyMethodMap()
	{
		Map map = new HashMap();
		map.put("action.lookup.add", "createAction");
		map.put("action.lookup.remove", "deleteAction");
		map.put("action.lookup.change", "updateAction");
		return map;
	}

	public ActionForward createAction(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{
		return new ActionForward("/forward/create-user.jsp");
	}

	public ActionForward deleteAction(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{
		return new ActionForward("/forward/delete-user.jsp");
	}

	public ActionForward updateAction(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
	{
		return new ActionForward("/forward/update-user.jsp");
	}

}

package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public class CustomerAction extends Action {

    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
    	
    	
    	ActionMessages messages = new ActionMessages();
    	
    	ActionMessage msg = new ActionMessage("data.ok");
    	messages.add("message1", msg);
    
    	

    	saveMessages(request, messages);
    	request.setAttribute("greet","Hello Friday !!");
        return mapping.findForward("success");
    }

}

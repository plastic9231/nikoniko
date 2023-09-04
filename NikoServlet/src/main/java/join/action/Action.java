package join.action;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import join.controller.ActionForward;


public interface Action {
	
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws IOException;

}
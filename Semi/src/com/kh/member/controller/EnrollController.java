package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.board.model.vo.Attachment;
import com.kh.common.MyFileRenamePolicy;
import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class EnrollController
 */
@WebServlet("/enroll.me")
public class EnrollController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnrollController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("views/member/memberEnroll.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10*1024*1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/profile_upfiles/");
			
			MultipartRequest multi = new MultipartRequest(request,savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			String key = "file";
			String userId = multi.getParameter("userId");
			String userPwd = multi.getParameter("userPwd");
			String userName = multi.getParameter("userName");
			String userNickname = multi.getParameter("userNickname");
			String pet = multi.getParameter("pet");
			String fileName = multi.getParameter("fileName");
			String phone = multi.getParameter("phone");
			String address = multi.getParameter("ad1")+multi.getParameter("ad2")+multi.getParameter("ad3");
			
			Member m = new Member();
			m.setUserId(userId);
			m.setUserPwd(userPwd);
			m.setUserName(userName);
			m.setUserNickname(userNickname);
			m.setPet(pet);
			m.setFileName(fileName);
			m.setPhone(phone);
			m.setAddress(address);
			
			Attachment at = new Attachment();
			if(multi.getOriginalFileName(key) != null) {
				at.setOriginName(multi.getOriginalFileName(key));
				at.setChangeName(multi.getFilesystemName(key));
				at.setFilePath("/resources/profile_upfiles/");
			}
			
			int result = new MemberService().insertMember(m, at);
			
			if(result > 0) {
				
				request.getSession().setAttribute("alertMsg", "회원가입에 성공했습니다.");
				response.sendRedirect(request.getContextPath());
			}else {
				request.setAttribute("errorMsg", "회원가입 실패");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
			
			
			
			
			
			
		}
		
		
		
	}

}

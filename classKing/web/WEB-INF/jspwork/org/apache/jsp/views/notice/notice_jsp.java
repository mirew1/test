/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.28
 * Generated at: 2018-03-28 12:07:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.notice;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import member.model.vo.Member;
import member.model.vo.Member;
import member.model.vo.Member;

public final class notice_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("/views/notice/../etc/footer.jsp", Long.valueOf(1521792753060L));
    _jspx_dependants.put("/views/notice/../etc/login.jsp", Long.valueOf(1521959518590L));
    _jspx_dependants.put("/views/notice/../etc/loginAdmin.jsp", Long.valueOf(1522049742689L));
    _jspx_dependants.put("/views/notice/../etc/loginMember.jsp", Long.valueOf(1522226272700L));
    _jspx_dependants.put("/views/notice/../etc/header.jsp", Long.valueOf(1521805082270L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("member.model.vo.Member");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");

	Member loginUser = (Member) session.getAttribute("loginUser");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("\r\n");
      out.write("<link href=\"/classKing/css/reset.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\r\n");
      out.write("<link href=\"/classKing/css/main.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<link href=\"/classKing/css/board.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("<script src=\"/classKing/js/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("<script src=\"/classKing/js/jquery.lbslider.js\"></script>\r\n");
      out.write("<script defer src=\"https://use.fontawesome.com/releases/v5.0.8/js/all.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<title>Class King</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>header</title>\r\n");
      out.write("<link href=\"/classKing/css/header.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<header>\r\n");
      out.write("\t\t<div id=\"top\">\r\n");
      out.write("\t\t\t<a href=\"/classKing/main.jsp\"><img src=/classKing/images/logo01.png></a>\r\n");
      out.write("\t\t\t<div class=\"top_right\">\r\n");
      out.write("\t\t\t\t<div class=\"box_search\">\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"tf_search\" class=\"tf_search\"\r\n");
      out.write("\t\t\t\t\t\tplaceholder=\"검색어 입력\" />\r\n");
      out.write("\t\t\t\t\t<button type=\"submit\" class=\"btn_search\" onclick=\"location.href='/classKing/views/search/search.jsp'\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"ico_search\">검색</span>\r\n");
      out.write("\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<section>\r\n");
      out.write("\t<div id=\"wrap\">\r\n");
      out.write("\t\r\n");
      out.write("\t   \r\n");
      out.write("\t    \r\n");
      out.write("\t\t<div id=\"right_box\">\r\n");
      out.write("\t\t\t<!-- 로그인박스 시작 -->\r\n");
      out.write("\t\t\t");
 if (loginUser != null && loginUser.getMemberId().equals("admin")) { 
      out.write("\r\n");
      out.write("\t\t\t\t\t");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t");

		Member loginUser2 = (Member)session.getAttribute("loginUser");
		String url = request.getRequestURL().toString();
	
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>login2</title>\r\n");
      out.write("<link href=\"/classKing/css/adminLogin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"admin_box\">\r\n");
      out.write("\t\t<table class=\"user_table\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" id=\"user_img\"><img src=\"/classKing/images/user.png\">\r\n");
      out.write("\t\t\t\t\t<span class=\"username\">");
      out.print( loginUser2.getMemberId() );
      out.write("님, 반갑습니다.</span></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td><a href=\"/classKing/views/member/memberMypage.jsp\"><img\r\n");
      out.write("\t\t\t\t\t\tsrc=\"/classKing/images/setting.png\"></a>\r\n");
      out.write("\t\t\t\t<p>설정</p></td>\r\n");
      out.write("\t\t\t\t<td><a href=\"/classKing/mlogout?url=");
      out.print( url );
      out.write("\"><img src=\"/classKing/images/logout.png\"></a>\r\n");
      out.write("\t\t\t\t<p>로그아웃</p></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t<hr class=\"hr_gray\">\r\n");
      out.write("\t\t<div class=\"admin_menu\">\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"/classKing/views/admin/adminClass.jsp\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fas fa-angle-right\"></i> 클래스 관리</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"/classKing/views/admin/adminMember.jsp\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fas fa-angle-right\"></i> 회원 관리</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t\t\t\t");
 } else if (loginUser != null) { 
      out.write("\r\n");
      out.write("\t\t\t\t\t");
      out.write("\r\n");
      out.write("\t \r\n");
      out.write("\t");

		Member loginUser1 = (Member)session.getAttribute("loginUser");
		String url = request.getRequestURL().toString();
	
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link href=\"/classKing/css/adminLogin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"admin_box\">\r\n");
      out.write("\t\t<table class=\"user_table\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" id=\"user_img\"><img src=\"/classKing/upload/\r\n");
      out.write("\t\t\t\t");
 if(loginUser1.getMemberRenameImg() != null){ 
      out.write("\r\n");
      out.write("\t\t\t\t\tmember_upload/");
      out.print( loginUser1.getMemberRenameImg() );
      out.write("\r\n");
      out.write("\t\t\t\t");
 }else{ 
      out.write("\r\n");
      out.write("\t\t\t\t\timages/user.png\r\n");
      out.write("\t\t\t\t");
 }
      out.write("\">\r\n");
      out.write("\t\t\t\t\t<span class=\"username\">");
      out.print( loginUser1.getMemberId() );
      out.write("님, 반갑습니다.</span></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr style=\"border-top:none;\">\r\n");
      out.write("\t\t\t\t<td><a href=\"/classKing/views/member/memberMypage.jsp\"><img\r\n");
      out.write("\t\t\t\t\t\tsrc=\"/classKing/images/setting.png\"></a>\r\n");
      out.write("\t\t\t\t<p>설정</p></td>\r\n");
      out.write("\t\t\t\t<td><a href=\"/classKing/mlogout?url=");
      out.print( url );
      out.write("\"><img src=\"/classKing/images/logout.png\"></a>\r\n");
      out.write("\t\t\t\t<p>로그아웃</p></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t\t\t\t");
 } else { 
      out.write("\r\n");
      out.write("\t\t\t\t\t");
      out.write('\r');
      out.write('\n');
      out.write('	');

	String url = request.getRequestURL().toString();
	
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>login</title>\r\n");
      out.write("<link href=\"/classKing/css/login.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"login_box\">\r\n");
      out.write("\t\t<form action=\"/classKing/mlogin\">\r\n");
      out.write("\t\t\t<input type=\"text\" name=\"userid\" id=\"userid\" placeholder=\"아이디\"\r\n");
      out.write("\t\t\t\tclass=\"form-control\"> <input type=\"password\" name=\"userpwd\"\r\n");
      out.write("\t\t\t\tid=\"userpwd\" placeholder=\"비밀번호\" class=\"form-control\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"join\">\r\n");
      out.write("\t\t\t<label><a href=\"/classKing/views/member/memberJoin.jsp\">회원가입</a></label>\r\n");
      out.write("\t\t\t<div>\r\n");
      out.write("\t\t\t\t<label><a href=\"/classKing/views/member/memberIdFind.jsp\">아이디\r\n");
      out.write("\t\t\t\t\t\t/ </a></label><label><a\r\n");
      out.write("\t\t\t\t\thref=\"/classKing/views/member/memberPwdFind.jsp\">비밀번호</a></label>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<input type=\"submit\" name=\"login_btn\" id=\"login_btn\"\r\n");
      out.write("\t\t\tclass=\"btn btn-primary\" value=\"로그인\">\r\n");
      out.write("\t\t\t<input type=\"hidden\" name=\"url\" value=\"");
      out.print( url );
      out.write("\">\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t\t\t\t");
 } 
      out.write("\r\n");
      out.write("\t\t\t<!-- 로그인박스 끝 -->\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<!-- 알람박스 시작 -->\r\n");
      out.write("\t\t\t<div id=\"alarm_box\">\r\n");
      out.write("\t\t\t알람!\t\r\n");
      out.write("\t\t\t</div>\t\t\t\t\r\n");
      out.write("\t\t    <!-- 알람박스 끝 -->\r\n");
      out.write("\t\t</div>\t\r\n");
      out.write("\t \t<div id=\"left_box\">\r\n");
      out.write("\t\t \t<div class=\"board_title\">\r\n");
      out.write("\t\t \t\t<div class=\"title\"><i class=\"fas fa-bullhorn\"></i> 공지사항</div>\t\r\n");
      out.write("\t\t \t\t<button type=\"button\" class=\"btn btn-secondary\" style=\"float:right\" onclick=\"location.href='/classKing/views/notice/noticeMake.jsp'\"><i class=\"far fa-file-alt\"></i> 새글쓰기</button>\r\n");
      out.write("\t\t \t</div>\r\n");
      out.write("\t\t \t\t \t\r\n");
      out.write("\t\t \t<div id=\"notice_table\" class=\"board_table\">\r\n");
      out.write("\t\t \t<table class=\"table\">\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<th>번호</th>\r\n");
      out.write("\t\t \t\t\t<th>제목</th>\r\n");
      out.write("\t\t \t\t\t<th>작성일</th>\r\n");
      out.write("\t\t \t\t\t<th>조회수</th>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"/classKing/views/notice/noticeDetail.jsp\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t\t<tr>\r\n");
      out.write("\t\t \t\t\t<td>10</td>\r\n");
      out.write("\t\t \t\t\t<td><a href=\"#\">클래스킹 업데이트에 따른 시스템 점검 안내</a></td>\r\n");
      out.write("\t\t \t\t\t<td>2018-02-05</td>\r\n");
      out.write("\t\t \t\t\t<td>32</td>\r\n");
      out.write("\t\t \t\t</tr>\r\n");
      out.write("\t\t \t</table>\r\n");
      out.write("\t\t \t\r\n");
      out.write("\t\t \t</div>\r\n");
      out.write("\t \t\t<div id=\"board_searchbox\">\r\n");
      out.write("\t \t\t\t<select class=\"form-control notice_select\">\r\n");
      out.write("\t\t\t\t  <option>제목</option>\r\n");
      out.write("\t\t\t\t  <option>내용</option>\r\n");
      out.write("\t\t\t\t</select>\r\n");
      out.write("\t \t\t\t<input type=\"text\" name=\"notice_search\" class=\"notice_search form-control\">\t \r\n");
      out.write("\t \t\t\t<input type=\"submit\" name=\"search_submit\" class=\"btn btn-dark\" value=\"검색\">\t\r\n");
      out.write("\t \t\t</div>\r\n");
      out.write("\t \t\t<div id=\"board_page\">\r\n");
      out.write("\t\t \t\t<ul class=\"pagination\">\r\n");
      out.write("\t\t\t\t  <li class=\"page-item\"><a class=\"page-link\" href=\"#\">Previous</a></li>\r\n");
      out.write("\t\t\t\t  <li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\r\n");
      out.write("\t\t\t\t  <li class=\"page-item\"><a class=\"page-link\" href=\"#\">2</a></li>\r\n");
      out.write("\t\t\t\t  <li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\r\n");
      out.write("\t\t\t\t  <li class=\"page-item\"><a class=\"page-link\" href=\"#\">4</a></li>\r\n");
      out.write("\t\t\t\t  <li class=\"page-item\"><a class=\"page-link\" href=\"#\">5</a></li>\r\n");
      out.write("\t\t\t\t  <li class=\"page-item\"><a class=\"page-link\" href=\"#\">Next</a></li>\r\n");
      out.write("\t\t\t\t</ul>\t \t\t\r\n");
      out.write("\t \t\t</div> \t\r\n");
      out.write("\t \t</div>\t \r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t</section>\t\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>footer</title>\r\n");
      out.write("<link href=\"/classKing/css/footer.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<footer>\r\n");
      out.write("\t\t<div class=\"footer\">\r\n");
      out.write("\t\t\t<a href=\"/classKing/views/notice/notice.jsp\">공지사항 ㅣ</a>\r\n");
      out.write("\t\t\t<a href=\"/classKing/views/qna/qna.jsp\">Q&A </a><br>\r\n");
      out.write("\t\t\tCOPYRIGHT(C) 2018 CLASS KING. ALL RIGHTS RESERVED.\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</footer>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

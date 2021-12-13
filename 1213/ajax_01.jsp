<%@page import = "java.util.*, java.io.*, util.*, compweb.*,org.json.simple.JSONObject" %>
<%@page contentType="text/html; charset=utf-8" %>
<%
   request.setCharacterEncoding("UTF-8");
   String action = request.getParameter("action"); //取得前台資料
   System.out.println("=>OK");
   if (action.equals("CHECK_ID")){
   
       JSONObject json = new JSONObject();
       json.put("isExist","true");
       json.put("name","王小明");

       String jString = JSONObject.toJSONString(json);
       out.println(jString);   
   }
   if (action.equals("GET_DEPT")){
   
       JSONObject json = new JSONObject();
       json.put("isExist","true");
       json.put("name","資訊部");

       String jString = JSONObject.toJSONString(json);
        out.println(jString);   
   }
  
%>

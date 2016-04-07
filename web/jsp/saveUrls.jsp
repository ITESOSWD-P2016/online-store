<%--
  Created by IntelliJ IDEA.
  User: jorge
  Date: 05/04/16
  Time: 11:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String Slide1 = request.getParameter( "dirsld1" );
    if (Slide1 != "") session.setAttribute( "sld1", Slide1 );
    String Slide2 = request.getParameter( "dirsld2" );
    if (Slide2 != "") session.setAttribute( "sld2", Slide2 );
    String Slide3 = request.getParameter( "dirsld3" );
    if (Slide3 != "") session.setAttribute( "sld3", Slide3 );

    String Photo1 = request.getParameter( "txtPhoto" );
    if (Photo1 != "") session.setAttribute("sldPhoto1", Photo1);
    String Photo2 = request.getParameter( "txtPhoto2" );
    if (Photo2 != "") session.setAttribute("sldPhoto2", Photo2);
    String Photo3 = request.getParameter( "txtPhoto3" );
    if (Photo3 != "") session.setAttribute("sldPhoto3", Photo3);

    String Cat1 = request.getParameter( "catdir1" );
    if (Cat1 != "") session.setAttribute("catDir1", Cat1);
    String Cat2 = request.getParameter( "catdir2" );
    if (Cat2 != "") session.setAttribute("catDir2", Cat2);
    String Cat3 = request.getParameter( "catdir3" );
    if (Cat3 != "") session.setAttribute("catDir3", Cat3);
    String Cat4 = request.getParameter( "catdir4" );
    if (Cat4 != "") session.setAttribute("catDir4", Cat4);
    String Cat5 = request.getParameter( "catdir5" );
    if (Cat5 != "") session.setAttribute("catDir5", Cat5);
    String Cat6 = request.getParameter( "catdir6" );
    if (Cat6 != "") session.setAttribute("catDir6", Cat6);
    String Cat7 = request.getParameter( "catdir7" );
    if (Cat7 != "") session.setAttribute("catDir7", Cat7);
    String Cat8 = request.getParameter( "catdir8" );
    if (Cat8 != "") session.setAttribute("catDir8", Cat8);
    String Cat9 = request.getParameter( "catdir9" );
    if (Cat9 != "") session.setAttribute("catDir9", Cat9);
    String Cat10 = request.getParameter( "catdir10" );
    if (Cat10 != "") session.setAttribute("catDir10", Cat10);

    String Brand1 = request.getParameter( "brand1" );
    if (Brand1 != "") session.setAttribute("brand1", Brand1);
    String Brand2 = request.getParameter( "brand2" );
    if (Brand2 != "") session.setAttribute("brand2", Brand2);
    String Brand3 = request.getParameter( "brand3" );
    if (Brand3 != "") session.setAttribute("brand3", Brand3);
    String Brand4 = request.getParameter( "brand4" );
    if (Brand4 != "") session.setAttribute("brand4", Brand4);
    String Brand5 = request.getParameter( "brand5" );
    if (Brand5 != "") session.setAttribute("brand5", Brand5);
    String Brand6 = request.getParameter( "brand6" );
    if (Brand6 != "") session.setAttribute("brand6", Brand6);
    String Brand7 = request.getParameter( "brand7" );
    if (Brand7 != "") session.setAttribute("brand7", Brand7);

    String featPhoto1 = request.getParameter( "featimg1" );
    if (featPhoto1 != "") session.setAttribute("featImg1", featPhoto1);
    String featPhoto2 = request.getParameter( "featimg2" );
    if (featPhoto2 != "") session.setAttribute("featImg2", featPhoto2);
    String featPhoto3 = request.getParameter( "featimg3" );
    if (featPhoto3 != "") session.setAttribute("featImg3", featPhoto3);
    String featPhoto4 = request.getParameter( "featimg4" );
    if (featPhoto4 != "") session.setAttribute("featImg4", featPhoto4);
    String featPhoto5 = request.getParameter( "featimg5" );
    if (featPhoto5 != "") session.setAttribute("featImg5", featPhoto5);
    String featPhoto6 = request.getParameter( "featimg6" );
    if (featPhoto6 != "") session.setAttribute("featImg6", featPhoto6);

    String recPhoto1 = request.getParameter( "rec1" );
    if (recPhoto1 != "") session.setAttribute("recImg1", recPhoto1);
    String recPhoto2 = request.getParameter( "rec2" );
    if (recPhoto2 != "") session.setAttribute("recImg2", recPhoto2);
    String recPhoto3 = request.getParameter( "rec3" );
    if (recPhoto3 != "") session.setAttribute("recImg3", recPhoto3);
    String recPhoto4 = request.getParameter( "rec4" );
    if (recPhoto4 != "") session.setAttribute("recImg4", recPhoto4);
    String recPhoto5 = request.getParameter( "rec5" );
    if (recPhoto5 != "") session.setAttribute("recImg5", recPhoto5);
    String recPhoto6 = request.getParameter( "rec6" );
    if (recPhoto6 != "") session.setAttribute("recImg6", recPhoto6);

%>

<html>
<body>
<a href="index.jsp">Continue</a>
</body>
</html>

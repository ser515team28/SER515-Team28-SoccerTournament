<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!doctype html>
<HTML>
<HEAD>
<TITLE>volunteer  Schedule</TITLE>
</HEAD>

<BODY>
<FORM action="" method="post">
Volunteer Email: <INPUT type="text" name="title" size="35"><BR>
Time:
Sun<INPUT type="checkbox" name="day" value="sun">
Mon<INPUT type="checkbox" name="day" value="mon">
Tue<INPUT type="checkbox" name="day" value="tue">
Wed<INPUT type="checkbox" name="day" value="wed">
Thu<INPUT type="checkbox" name="day" value="thu">
Fri<INPUT type="checkbox" name="day" value="fri">
Sat<INPUT type="checkbox" name="day" value="sat">
<SELECT name="starttime">
<OPTION value="8">8:00am</OPTION>
<OPTION value="9">9:00am</OPTION>
<OPTION value="10">10:00am</OPTION>
<OPTION value="11">11:00am</OPTION>
<OPTION value="12">12:00pm</OPTION>
<OPTION value="13">1:00pm</OPTION>
<OPTION value="14">2:00pm</OPTION>
<OPTION value="15">3:00pm</OPTION>
<OPTION value="16">4:00pm</OPTION>
<OPTION value="17">5:00pm</OPTION>
<OPTION value="18">6:00pm</OPTION>
<OPTION value="19">7:00pm</OPTION>
<OPTION value="20">8:00pm</OPTION>
<OPTION value="21">9:00pm</OPTION>
</SELECT>
to
<SELECT name="endtime">
<OPTION value="9">9:00am</OPTION>
<OPTION value="10">10:00am</OPTION>
<OPTION value="11">11:00am</OPTION>
<OPTION value="12">12:00pm</OPTION>
<OPTION value="13">1:00pm</OPTION>
<OPTION value="14">2:00pm</OPTION>
<OPTION value="15">3:00pm</OPTION>
<OPTION value="16">4:00pm</OPTION>
<OPTION value="17">5:00pm</OPTION>
<OPTION value="18">6:00pm</OPTION>
<OPTION value="19">7:00pm</OPTION>
<OPTION value="20">8:00pm</OPTION>
<OPTION value="21">9:00pm</OPTION>
<OPTION value="22">10:00pm</OPTION>
</SELECT>
<BR>
<BR>
<INPUT type="submit" name="Submit" value="Show">
</FORM>

</BODY>
</HTML>
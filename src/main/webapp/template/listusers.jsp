<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shmwebfunc" uri="http://shmsoft.com/tags/custom"%>

<div class="reg-proj-head">
    List of users: 
</div>

<div class="delimiter">
</div>

<div class="listusers-newuser">
    <a class="newuserlink" href="user.html">Create new user</a>
</div>

<div class="listusers-box">
  <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td class="listusers-header">Edit</td>
        <td class="listusers-header">Username</td>
        <td class="listusers-header">First Name</td>
        <td class="listusers-header">Last Name</td>
        <td class="listusers-header">Email</td>
        <td class="listusers-header">Remove</td>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>
                <a href="user.html?action=edit&username=${user.username}"><img src="images/edit.png" title="Edit"/></a>
            </td>
            <td>${user.username}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.email}</td>
            <td>
                <c:if test="${user.username != 'admin'}">
                  <a href="user.html?action=delete&username=${user.username}"><img src="images/delete.gif" title="Remove"/></a>
                </c:if>
                &nbsp;
            </td>
        </tr>    
    </c:forEach>
  </table>
</div>
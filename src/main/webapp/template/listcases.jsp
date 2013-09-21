<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shmwebfunc" uri="http://shmsoft.com/tags/custom"%>

<div class="reg-proj-head">
    Cases: 
</div>

<div class="delimiter">
</div>

<div class="listusers-newuser">
    <a class="newuserlink" href="usercase.html">Create new case</a>
</div>

<div class="listusers-box">
  <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td class="listusers-header">Edit</td>
        <td class="listusers-header">Name</td>
        <td class="listusers-header">Description</td>
        <td class="listusers-header">Remove</td>
    </tr>
    <c:forEach var="c" items="${cases}">
        <tr>
            <td>
                <a href="usercase.html?action=edit&id=${c.id}"><img src="images/edit.png" title="Edit"/></a>
            </td>
            <td>${c.name}</td>
            <td>${c.description}</td>
            <td>
              <a href="usercase.html?action=delete&id=${c.id}"><img src="images/delete.gif" title="Remove"/></a>
            </td>
        </tr>    
    </c:forEach>
  </table>
</div>
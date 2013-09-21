<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shmwebfunc" uri="http://shmsoft.com/tags/custom"%>

<div class="reg-proj-head">
    Administrate user 
</div>

<div class="delimiter">
</div>

<c:if test="${fn:length(errors) > 0}">
  <div class="error">
    <c:forEach var="err" items="${errors}">
        ${err} <br/>
    </c:forEach>
  </div>
</c:if>

<div class="user-box">
  <form action="user.html" method="post">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>Username*:</td>
            <td>
                <c:choose>
                    <c:when test="${action == 'edit'}">
                        ${user.username}
                        <input type="hidden" name="username" value="${user.username}"/>
                    </c:when>
                    <c:otherwise>
                        <input type="text" name="username" value="${user.username}"/>
                        <input type="hidden" name="mode" value="new"/>
                    </c:otherwise>
                </c:choose>
            </td>
          </tr>
          <tr>
            <td>First Name*: </td>
            <td><input type="text" name="firstName" value="${user.firstName}"/></td>
          </tr>
          <tr>
            <td>Last Name*: </td>
            <td><input type="text" name="lastName" value="${user.lastName}"/></td>
          </tr>
          <tr>
            <td>Email*: </td>
            <td><input type="text" name="email" value="${user.email}"/></td>
          </tr>
          <tr>
            <td colspan="2">
              &nbsp;
            </td>
          </tr>
          <tr>
            <td>Password: </td>
            <td><input type="password" name="password1" value=""/></td>
          </tr>
          <tr>
            <td>Confirm password: </td>
            <td><input type="password" name="password2" value=""/></td>
          </tr>
          <tr>
            <td colspan="2">
              <span class="explanation">(Please enter only if you wish to change your passwors)</span>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              &nbsp;
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="checkbox" name="PROCESS" <c:if test="${shmwebfunc:hasRight(user, 'PROCESS')}">checked</c:if>>Process data</input>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="checkbox" name="APP_CONFIG" <c:if test="${shmwebfunc:hasRight(user, 'APP_CONFIG')}">checked</c:if>>Application configuration</input>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="checkbox" name="USERS_ADMIN" <c:if test="${shmwebfunc:hasRight(user, 'USERS_ADMIN')}">checked</c:if>>Users administration</input>
            </td>
          </tr>
          <tr>
            <td colspan="2">              
              <input type="checkbox" name="DOCUMENT_TAG" <c:if test="${shmwebfunc:hasRight(user, 'DOCUMENT_TAG')}">checked</c:if>>Tag documents</input>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="checkbox" name="CASES" <c:if test="${shmwebfunc:hasRight(user, 'CASES')}">checked</c:if>>Edit cases</input>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              &nbsp;
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <span class="explanation">(Fields marked with * are mandatory)</span>
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="Submit" value="Save"/>
            </td>
          </tr>
    </table>
    <input type="hidden" name="action" value="save"/>
  </form>
</div>
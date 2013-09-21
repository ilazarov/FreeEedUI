<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shmwebfunc" uri="http://shmsoft.com/tags/custom"%>

<c:choose>
    <c:when test="${loggedVisitor == null}">
    
<div class="login-box">
    <c:if test="${loginError}">
        <div class="error">
            Invalid username or password!
        </div>
    </c:if>
    <div class="login-label">
        Login
    </div>
    <form action="login.html" method="post">
        <div class="login-box-username">
            <div class="login-box-username-field">
                Username
            </div>
            <div class="login-box-username-box">
                <input type="text" value="" name="username"/>
            </div>
        </div>
        <div class="login-box-password">
            <div class="login-box-password-field">
                Password
            </div>
            <div class="login-box-password-box">
                <input type="password" value="" name="password"/>
            </div>
        </div>
        <div class="login-box-login">
            <input type="Submit" value="Login"/>
        </div>
    </form>
</div>
    
    </c:when>
    <c:otherwise>
    
<ul>
<li> <a class="menulink" href="search.html"> Search </a></li>

<c:if test="${shmwebfunc:hasRight(loggedVisitor.user, 'CASES')}">
    <li> <a class="menulink" href="listcases.html"> Cases </a></li>
</c:if>

<c:if test="${shmwebfunc:hasRight(loggedVisitor.user, 'APP_CONFIG')}">
    <li> <a class="menulink" href="appsettings.html"> Application settings </a></li>
</c:if>

<c:if test="${shmwebfunc:hasRight(loggedVisitor.user, 'USERS_ADMIN')}">
    <li> <a class="menulink" href="listusers.html"> User Administration </a></li>
</c:if>

<li> <a class="menulink" href="logout.html"> Logout </a></li>

    </c:otherwise>
</c:choose>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shmwebfunc" uri="http://shmsoft.com/tags/custom"%>

<div class="reg-proj-head">
    Application Settings
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
<c:if test="${success}">
    <div class="success">
        Your data is stored successfully!
    </div>
</c:if>

<div class="user-box">
  <form action="appsettings.html" method="post">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>Results per page*:</td>
            <td><input type="text" name="results_per_page" value="${appSettings.resultsPerPage}"/></td>
          </tr>
          <tr>
            <td>Solr endpoint URL*: </td>
            <td><input type="text" name="solr_endpoint" value="${appSettings.solrEndpoint}"/></td>
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script src="js/search.js"></script>

<script>
<c:forEach var="t" items="${tags}">
    allTags['${t}'] = 1;  
</c:forEach>
</script>

<div class="delimiter2">
</div>

<div class="your-case">
    <div class="your-search-label">
        Your Case 
    </div>
    <div class="your-search-box">
        <form name="change" method="post" action="search.html">
        <input type="hidden" name="action" value="changecase"/>
        Selected case: <select class="your-case-select" name="id" onchange="document.change.submit()">
            <c:forEach var="c" items="${cases}">
                <option value="${c.id}" ${(selectedCase != null && selectedCase.id == c.id) ? 'selected' : ''}>${c.name}</option>
            </c:forEach>
        </select>
        </form>
    </div>
</div>

<div class="delimiter2">
</div>

<div class="your-search">
    <div class="your-search-label">
       Search
    </div>
    <div class="your-search-box">
        <div class="search-box">
            <input id="search-query" class="search-field" type="text" name="query" value=""/>
            <input type="button" name="Search" value="Search" onclick="search()"/>
        </div>
        
        <div class="case-tags-box">
            <div class="case-tags-box-label">Search by tags</div>
            <div class="case-tags-box-body"></div>
        </div>
        
        <div style="clear:both;"></div>
    </div>
</div>

<div id="result-ajax">
    <div class="delimiter3">
    </div>
</div>
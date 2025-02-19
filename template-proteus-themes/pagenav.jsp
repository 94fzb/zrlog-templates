<%@ page session="false"  pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty requestScope.pager}">
    <div class="page_navi" style="padding-bottom: 40px">
        <c:if test="${!requestScope.pager.startPage}">
            <A title="${_res.pageStart}" class="extend" href="${pager.pageStartUrl}">${_res.pageStart}</A>
        </c:if>
        <c:forEach items="${requestScope.pager.pageList}" var="page">
            <a
                    <c:if test="${page.current}">class="current"</c:if> href="${page.url}">${page.desc}</a>
        </c:forEach>
        <c:if test="${!requestScope.pager.endPage}">
            <A title="${_res.pageEnd}" class="extend" href="${pager.pageEndUrl}">${_res.pageEnd}</A>
        </c:if>
    </div>
</c:if>
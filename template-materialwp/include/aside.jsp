<%@ page language="java" session="false" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="secondary" class="widget-area col-md-4 col-lg-4" role="complementary">
<c:choose>
<c:when test="${not empty init.plugins}">
<c:forEach var="plugin" items="${init.plugins}">
<c:choose>
<c:when test="${plugin.isSystem==false and pageLevel>=plugin.level}">
<aside class="widget widget_recent_entries">
<div class="panel panel-primary">
<div class="panel-heading"><h3 class="panel-title">${plugin.pTitle}</h3></div>
<div style="padding:15px">${plugin.content}</div>
<br />
</div>
</aside>
</c:when>
<c:otherwise>
<c:choose>
<c:when test="${plugin.pluginName eq 'types' }">
<aside class="widget widget_recent_entries">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">${_res.category}</h3></div>
<div class="list">
<ul class="category_list">
<c:forEach var="type" items="${init.types}">
<li><a href="${type.url}">${type.typeName} (${type.typeamount})</a></li>
</c:forEach>
</ul>
</div>
</aside>
</c:when>
<c:when test="${plugin.pluginName eq 'links' and pageLevel>=plugin.level}">
<aside class="widget widget_recent_entries">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">${_res.link}</h3>
</div>
<ul>
<c:forEach items="${init.links}" var="link">
<li><a href="${link.url }" title="${link.alt}" target="_blank">${link.linkName}</a></li>
</c:forEach>
</ul>
</div>
</aside>
</c:when>
<c:when test="${plugin.pluginName eq 'archives'}">
<aside class="widget widget_recent_entries">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">${_res.archive}</h3>
</div>
<ul>
<c:forEach var="archive" items="${init.archiveList}">
<li><a href="${archive.url}" rel="nofollow">${archive.text}
(${archive.count})</a>
</li>
</c:forEach>
</ul>
</div>
</aside>
</c:when>
<c:when test="${plugin.pluginName eq 'tags'}">
<style type="text/css">
.taglist a{padding:10px;display:inline-block;white-space:nowrap;}
a.size1{font-size:10px;padding:2px;color}
a.size1:hover{color:#E13728;}
a.size2{padding:2px;font-size:12px;color:#B9251A;}
a.size2:hover{color:#E13728;}
a.size3{padding:3px;font-size:14px;color:#C4876A;}
a.size3:hover{color:#E13728;}
a.size4{padding:1px;font-size:18px;color:#B46A47;}
a.size4:hover{color:#E13728;}
a.size5{padding:3px;font-size:16px;color:#E13728;}
a.size5:hover{color:#B46A47;}
a.size6{padding:2px;font-size:12px;color:#77625E}
a.size6:hover{color:#E13728;}
</style>
<aside class="widget widget_recent_entries">
<div class="panel panel-primary">
<div class="panel-heading">
<h3 class="panel-title">${_res.tag}</h3>
</div>
<div class="taglist" id="tags">
<c:forEach items="${init.tags}" var="tag">
<a href="${tag.url}" title="${tag.text}上共有(${tag.count})文章">${tag.text}</a>
</c:forEach>
</div>
</aside>
</c:when>
</c:choose>
</c:otherwise>
</c:choose>
</c:forEach>
</c:when>
</c:choose>
</aside>
</div>

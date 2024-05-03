<%@ page language="java" session="false" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
<c:when test="${log.canComment}">
<c:choose>
    <c:when test="${init.webSite.changyan_status eq 'on'}">
        <!--PC和WAP自适应版-->
        <div id="SOHUCS" sid="${log.logId}"></div>
        <style>
            #SOHUCS #SOHU_MAIN .module-cmt-list .block-title-gw ul li {
                background-color: #fff;
            }
        </style>
        <script type="text/javascript">
            (function () {
                var appid = '${init.webSite.changyan_appId}';
                var conf = 'prod_e3ec9450cef3977322648b62a820e338';
                var width = window.innerWidth || document.documentElement.clientWidth;
                if (width < 960) {
                    window.document.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="//changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>');
                } else {
                    var loadJs = function (d, a) {
                        var c = document.getElementsByTagName("head")[0] || document.head || document.documentElement;
                        var b = document.createElement("script");
                        b.setAttribute("type", "text/javascript");
                        b.setAttribute("charset", "UTF-8");
                        b.setAttribute("src", d);
                        if (typeof a === "function") {
                            if (window.attachEvent) {
                                b.onreadystatechange = function () {
                                    var e = b.readyState;
                                    if (e === "loaded" || e === "complete") {
                                        b.onreadystatechange = null;
                                        a()
                                    }
                                }
                            } else {
                                b.onload = a
                            }
                        }
                        c.appendChild(b)
                    };
                    loadJs("//changyan.sohu.com/upload/changyan.js", function () {
                        window.changyan.api.config({appid: appid, conf: conf})
                    });
                }
            })(); </script>
    </c:when>
    <c:otherwise>
    </c:otherwise>
</c:choose>
</c:when>
</c:choose>
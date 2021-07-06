<#macro layout title,keywords,description>
<!DOCTYPE html>
<html lang="zh" xmlns="">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="${keywords!}"/>
    <meta name="description" content="${description!}" />

    <#if settings.pinghsu_general_dns!false>
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="dns-prefetch" href="//cdnjs.loli.net" />
    <link rel="dns-prefetch" href="//gravatar.loli.net" />
    </#if>

    <title>${title!}</title>
    <link href="${theme_base!}/source/css/style.css" type="text/css" rel="stylesheet" />
    <@global.head />

    <link rel="alternate" type="application/rss+xml" title="atom 1.0" href="${atom_url!}">

    <link rel="stylesheet" href="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.17.1/build/styles/rainbow.min.css">

</head>
<body>
<div class="root-container">
    <#include "menu.ftl">
    <#nested >
    <#include "footer.ftl">
</div>
</body>
<script src="//cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.17.1/build/highlight.min.js"></script>

<script type="text/javascript">
    hljs.initHighlightingOnLoad();
</script>
</html>
</#macro>


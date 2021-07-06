<#macro layout title,keywords,description>
<!DOCTYPE html>
<html lang="zh" xmlns="">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="${keywords!}"/>
    <meta name="description" content="${description!}" />
    <title>${title!}</title>
    <link href="${theme_base!}/source/css/style.css" type="text/css" rel="stylesheet" />
    <@global.head />

    <link href="${theme_base!}/source/css/highlight/androidstudio.css" type="text/css" rel="stylesheet" />

    <link rel="alternate" type="application/rss+xml" title="atom 1.0" href="${atom_url!}">


    <script src="${theme_base!}/source/js/highlight.min.js"></script>

    <script>hljs.initHighlightingOnLoad();</script>




</head>
<body>
<div class="root-container">
    <#include "menu.ftl">
    <#nested >
    <#include "footer.ftl">
</div>
</body>
<script type="text/javascript">

</script>
</html>
</#macro>


<#macro layout title,keywords,description>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="${keywords!}"/>
    <meta name="description" content="${description!}" />
    <title>${title!}</title>
    <link href="${theme_base!}/source/css/style.css" type="text/css" rel="stylesheet" />
    <@global.head />


</head>
<body>
<div class="root-container">
    <#include "menu.ftl">
    <#nested >
    <#include "footer.ftl">
</div>
</body>
</html>
</#macro>


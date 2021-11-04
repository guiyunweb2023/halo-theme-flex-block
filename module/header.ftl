<#macro header home_cover>
<#if is_index??>
<header class="header-container">
    <#else>
<header class="header-container post">
</#if>
    <div class="post-image" style="background-image:url(${home_cover})"></div>
    <#--  菜单  -->
    <#nested >
</header>
</#macro>
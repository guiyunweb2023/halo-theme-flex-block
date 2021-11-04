<#if posts.totalPages gt 1>
    <nav class="page-container">
        <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="5">
            <#if pagination.hasPrev>
                <a class="extend prev" rel="prev" href="${pagination.prevPageFullPath!}">ʚ</a>
            </#if>
            <#list pagination.rainbowPages as number>
                <#if number.isCurrent>
                    <span class="page-number current" href="${number.fullPath!}">${number.page!}</span>
                <#else>
                    <a class="page-number" href="${number.fullPath!}">${number.page!}</a>
                </#if>
            </#list>
            <#if pagination.hasNext>
                <a class="extend next" rel="next" href="${pagination.nextPageFullPath!}">ɞ</a>
            </#if>
        </@paginationTag>
    </nav>
    </ol>
</#if>
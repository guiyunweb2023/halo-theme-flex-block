<div class="body-container float">
    <div class="content-container article-`list">
        <div class="card-container card-articles">
            <div class="card-list">
                <#list posts.content as post>
                    <div id="article-${post_index}" class="card-item img">
                        <article>
                            <div class="card-cover" style="background-image:url(${post.thumbnail})">
                            </div>
                            <a class="article-link card-link" href="${post.fullPath!}" itemprop="url"></a>
                            <h2 class="article-title">${post.title}</h2>
                            <div class="article-meta"><span>发布于</span>
                                <time datetime=" ${post.createTime?string("yyyy-MM-dd")}" itemprop="datePublished">
                                    ${post.createTime?string("yyyy-MM-dd")}
                                </time>
                            </div>
                            <div class="article-category">
                                <#list post.tags as tag>
                                    <a class="article-category-link">${tag.name}</a>
                                </#list>
                            </div>
                        </article>
                    </div>
                </#list>
            </div>
        </div>
    </div>
</div>

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

<script type="text/javascript">
    let index1 = Math.round(Math.random() * (${posts.size}))
    document.getElementById('article-' + index1).className = 'card-item large img'
</script>
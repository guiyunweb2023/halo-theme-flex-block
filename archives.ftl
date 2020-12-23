<#include "module/layout.ftl">
<#include "module/header.ftl">
<@layout title="${options.blog_title!} | 归档" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <@header title="归档" subtitle="${settings.index_notice!}" home_cover="${settings.archives_cover}" />
    <div class="body-container">
        <article class="content-container article-container">
            <div class="article-content">
                <section class="article-entry">
                    <#list archives as archive>
                        <li style="list-style: none;">
                            <h2>${archive.year?c}</h2>
                            <ul>
                                <#list archive.posts?sort_by("createTime")?reverse as post>
                                    <li style="line-height:40px;"><a href="${context!}/archives/${post.url!}">${post.title!}</a></li>
                                </#list>
                            </ul>
                        </li>
                    </#list>
                </section>
            </div>
        </article>
    </div>
</@layout>

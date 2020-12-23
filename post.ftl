<#include "module/layout.ftl">
<#include "module/header.ftl">
<@layout title="${options.blog_title!} | ${post.title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <@header title="${post.title}" subtitle="${settings.index_notice!}" home_cover="${post.thumbnail}" />
    <div class="body-container">
        <article class="content-container article-container">
            <div class="article-content">
                <section class="article-entry">
                    ${post.formatContent!}
                </section>
            </div>
        </article>
    </div>

    <div class="body-container">
        <article class="content-container article-container">
            <div class="article-content">
                <section class="article-entry">
                    <h4>评论</h4>
                    <#include "module/comment.ftl">
                    <@comment post=post type="post" />
                </section>
            </div>
        </article>
    </div>
</@layout>

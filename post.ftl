<#include "module/layout.ftl">
<@layout title="${options.blog_title!} | ${post.title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <header class="header-container post">
        <div class="header-content">
            <div class="post-image"
                 style="background-image:url(${post.thumbnail!})">
            </div>
            <div class="post-text">
                <div class="type-wrap">
                    <#list post.tags as tag>
                        <a class="article-category-link">${tag.name}</a>
                    </#list>
                    <#--                    <a class="article-category-link">笔记</a>-->
                </div>
                <h1 class="title-wrap">${post.title!}</h1>
                <h2 class="title-sub-wrap">
                    <span>发布于</span> <a href="javascript:;"
                                        class="article-date">
                        <time datetime="${post.editTime!}"
                              itemprop="datePublished">${post.editTime?string("yyyy-MM-dd")!}
                        </time>
                    </a></h2>
            </div>
        </div>
    </header>
    <div class="body-container">
        <article class="content-container article-container">
            <div class="article-content">
                <section class="article-entry">
                    ${post.formatContent!}
                </section>
                <section class="article-footer">
                    <ul class="article-tag-list" itemprop="keywords">
                        <#list post.tags as tag>
                            <li class="article-tag-list-item">
                                <a class="article-tag-list-link" rel="tag">#${tag.name}</a>
                            </li>
                        </#list>
                    </ul>
                </section>
                <section class="article-navs">
                    <nav class="card-container card-article-nav">
                        <div class="card-list">
                            <#if prevPost??>
                                <div id="article-nav-older" class="card-item img">
                                    <article>
                                        <div class="card-cover"
                                             style="background-image:url(${prevPost.thumbnail!})"></div>
                                        <a
                                                class="card-link article-nav-link"
                                                href="${prevPost.fullPath!}"></a> <strong
                                                class="article-nav-caption">上一篇</strong>
                                        <p class="article-nav-title">${prevPost.title}</p>
                                    </article>
                                </div>
                            </#if>
                            <#if nextPost??>
                                <div id="article-nav-older" class="card-item img">
                                    <article>
                                        <div class="card-cover"
                                             style="background-image:url(${nextPost.thumbnail!})"></div>
                                        <a
                                                class="card-link article-nav-link"
                                                href="${nextPost.fullPath!}"></a> <strong
                                                class="article-nav-caption">下一篇</strong>
                                        <p class="article-nav-title">${nextPost.title}</p>
                                    </article>
                                </div>
                            </#if>
                        </div>
                    </nav>
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

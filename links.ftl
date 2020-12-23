<#include "module/layout.ftl">
<#include "module/header.ftl">
<@layout title="${options.blog_title!} | 友链" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <@header title="友链" subtitle="${settings.index_notice!}" home_cover="${settings.link_cover}" />
    <div class="body-container">
        <article class="content-container article-container">
            <div class="article-content">
                <div class="article-entry">
                    <p>站点名称 | ${blog_title!}</p>
                    <p>站点地址 | <a href="${blog_url!}">${blog_url!}</a></p>
                    <p>站点描述 | ${blog_title!}</p>
                    <p>站点图标 | <a href="${user.avatar!}"
                                 target="_blank"
                                 rel="noopener">https://image.guiyunweb.com/favicon.png</a>
                    </p>
                </div>
            </div>
        </article>
        <article class="content-container article-container">
            <div class="article-content">
                <section class="article-entry">
                    <@linkTag method="list">
                        <#if links?? && links?size gt 0>
                            <#list links as link>
                                <figure class="bookmark-card">
                                    <a class="bookmark-container" target="_blank" title="${link.name}"
                                       href="${link.url}">
                                        <div class="bookmark-content">
                                            <div class="bookmark-name">${link.name}</div>
                                            <div class="bookmark-link">${link.url}</div>
                                        </div>
                                        <div class="bookmark-cover">
                                            <img src="${link.logo}" alt="${link.name}"/>
                                        </div>
                                    </a>
                                </figure>
                            </#list>
                        </#if>
                    </@linkTag>
                </section>
            </div>
        </article>
    </div>
</@layout>
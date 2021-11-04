<#--  首页  -->
<#include "module/layout.ftl">
<#include "module/header.ftl">
<@layout title="${blog_title!}">
<@header home_cover="${settings.archives_cover}" >
<#include "module/nav.ftl">
<div class="header-content">
      <div class="post-text layout-block layout-padding">
        <h1 class="title-wrap">归档</h1>
        <@postTag method="count">
         <h2 class="title-sub-wrap">共有${count!0}篇文章</h2>
        </@postTag>
      </div>
    </div>
</@header>

<div class="body-container">
        <div class="layout-block post-container">
            <section class="article-entry markdown-body layout-margin content-padding--large soft-size--large soft-style--box">
            <@postTag method="archiveMonth">
                <#list archives as archive>
                    <h3>${archive.year?c}-${archive.month?c}</h3>
                    <ul>
                        <#list archive.posts?sort_by("createTime")?reverse as post>
                            <li>
                            <a href="${post.fullPath!}">${post.title!}</a>
                            </li>
                        </#list>
                    </ul>
                </#list>
                </@postTag>
            </section>
        </div>
</div>

</@layout>

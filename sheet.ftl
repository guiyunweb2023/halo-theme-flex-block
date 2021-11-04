<#--  首页  -->
<#include "module/layout.ftl">
<#include "module/header.ftl">
<@layout title="${blog_title!}">
<@header home_cover="${post.thumbnail!}">
<#include "module/nav.ftl">
<div class="header-content">
      <div class="post-text layout-block">
        <div class="layout-margin">
          <h1 class="title-wrap">${sheet.title!}</h1>
          <h2 class="title-sub-wrap">
            <strong>${user.nickname!}</strong>
            <span>发布于</span>
            <time  class="article-date" datetime="${sheet.editTime!}" itemprop="datePublished">
                ${sheet.editTime?string("yyyy-MM-dd")!}
            </time>
          </h2>
          <ul class="wrap-list dark">
          </ul>
        </div>
      </div>
    </div>
</@header>

<#include "module/content.ftl">

</@layout>
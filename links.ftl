<#--  首页  -->
<#include "module/layout.ftl">
<#include "module/header.ftl">
<@layout title="${blog_title!}">
<@header home_cover="${settings.archives_cover}" >
<#include "module/nav.ftl">
<div class="header-content">
      <div class="post-text layout-block layout-padding">
        <h1 class="title-wrap">友情链接</h1>
        <@linkTag  method="count">
         <h2 class="title-sub-wrap">共有${count!0}个友链</h2>
        </@linkTag >
      </div>
    </div>
</@header>

 <div class="layout-block post-container">
            <section class="article-entry markdown-body layout-margin content-padding--large soft-size--large soft-style--box">
                    <p>站点名称 | ${settings.link_title!}</p>
                    <p>站点地址 | <a href="${settings.link_url!}">${settings.link_url!}</a></p>
                    <p>站点描述 | ${settings.link_describe!}</p>
                    <p>站点图标 | <a href="${settings.link_icon!}"
                                 target="_blank"
                                 rel="noopener">${settings.link_icon!}</a>
                    </p>
                    <p>想要添加友链在<b>关于</b>留言即可</p>
            </section>
        </div>
<#include "module/links-card.ftl">
</@layout>

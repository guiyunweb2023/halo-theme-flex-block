<#--  首页  -->
<#include "module/layout.ftl">
<#include "module/header.ftl">
<@layout title="${blog_title!}">
<@header home_cover="${settings.tag_cover}" >
<#include "module/nav.ftl">
<div class="header-content">
      <div class="post-text layout-block layout-padding">
        <h1 class="title-wrap">🏷️ ${tag.name!}</h1>

      </div>
    </div>
</@header>

<#include "module/tag-card.ftl">

</@layout>

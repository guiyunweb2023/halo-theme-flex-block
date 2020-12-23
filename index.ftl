<#include "module/layout.ftl">
<#include "module/header.ftl">
<@layout title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <@header title="${options.blog_title!}" subtitle="${settings.index_notice!}" home_cover="${settings.home_cover}" />
    <#include "module/postcard.ftl">
</@layout>
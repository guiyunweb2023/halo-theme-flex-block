<div class="body-container">
   <article class="content-container layout-block post-container">
        <div class="article-info">
            <section class="article-entry markdown-body layout-margin content-padding--large soft-size--large soft-style--box">
                ${post.formatContent!}
            </section>

            <nav class="article-nav">
              <#if prevPost??>
                <div class="article-nav-item layout-padding">
               
                    <article class="card-container article-nav-card content-padding--primary soft-size--large soft-style--box">
                        <#if prevPost.thumbnail??>
                        <div class="card-cover" background-image-lazy data-img="${prevPost.thumbnail!}" style="background-image:url(${prevPost.thumbnail})"></div>
                        </#if>
                        <div class="card-text">
                            <a href="${prevPost.fullPath!}" itemprop="url">
                            <h2 class="card-text--title text-ellipsis">${prevPost.title}</h2>
                            </a>
                        <div class="card-text--row">上一篇</div>
                        </div>
                    </article>
              
                </div>
                   </#if>
                <#if nextPost??>
                <div class="article-nav-item layout-padding">
                <article class="card-container article-nav-card content-padding--primary soft-size--large soft-style--box">
                    <#if nextPost.thumbnail??>
                        <div class="card-cover" background-image-lazy data-img="${nextPost.thumbnail!}" style="background-image:url(${nextPost.thumbnail})"></div>
                        </#if>
                        <div class="card-text">
                            <a href="${nextPost.fullPath!}" itemprop="url">
                            <h2 class="card-text--title text-ellipsis">${nextPost.title}</h2>
                            </a>
                        <div class="card-text--row">下一篇</div>
                        </div>
                    </article>
                </div>
                  </#if>
            </nav>

            <section class="page-message-container layout-padding ">
                 <h2>评论</h2>
                 <#include "comment.ftl">
                 <@comment post=post type="post" />
            </section>
        </div>
        <div class="widget-info">
         <#include "right.ftl">
        </div>
     </article>
</div>
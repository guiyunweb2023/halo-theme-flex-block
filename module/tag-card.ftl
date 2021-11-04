<div class="body-container">
  <div class="content-container layout-block article-list">
    <#list posts.content as post>
    <div class="article-item layout-padding">
        <article class="card-container article-card content-padding--large soft-size--large soft-style--box">
            <div class="card-text">
                <a href="${post.fullPath!}" itemprop="url">
                    <h2 class="card-text--title">${post.title}</h2>
                </a>
                <div class="card-text--row">
                  <span>发布于</span>
                  <time class="" datetime="${post.editTime!}" itemprop="datePublished">
                  ${post.editTime?string("yyyy-MM-dd")!}
                  </time>
                </div>
                <div class="card-text--row">
                  已有${post.visits}人浏览
                </div>
            </div>
        </article>
    </div>
    </#list>
  </div>
</div>
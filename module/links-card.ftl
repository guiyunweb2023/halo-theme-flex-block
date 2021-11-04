<div class="body-container">
  <div class="content-container layout-block article-list">
      <@linkTag method="list">
        <#list links as link>
    <div class="article-item layout-padding">
        <article class="card-container article-card content-padding--large soft-size--large soft-style--box">
            <div class="card-text">
                <a href="${link.url!}" itemprop="url" target="_blank">
                    <h2 class="card-text--title">${link.name!}</h2>
                </a>
                <div class="card-text--row">
                  <span>${link.description!}</span>
                </div>
            </div>
        </article>
    </div>
    </#list>
      </@linkTag>
  </div>
</div>
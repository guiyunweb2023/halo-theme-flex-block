<section class="widget-author widget-item layout-margin content-padding--primary soft-size--large soft-style--box">
  <div class="widget-body">

      <img src="${settings.author_avatar!}" class="soft-size--round soft-style--box" alt="${settings.author_avatar!}">
   
      <h2>${user.nickname!}</h2>

      <p>${user.description!}</p>


    <div class="count-box">
      <div class="count-box--item">
        <@postTag method="count">
        <span>文章数：${count!0}</span>
        </@postTag>
      </div>
      <div class="count-box--item">
        <@commentTag method="count">
        <span>评论数：${count!0}</span>
        </@commentTag>
      </div>
      <div class="count-box--item">
        <@tagTag method="count">
        <span>标签数：${count!0}</span>
        </@tagTag>
      </div>
    </div>
  </div>
</section>
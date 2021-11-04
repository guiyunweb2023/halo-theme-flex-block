<@menuTag method="list">
<!-- navbar -->
<nav class="navbar">
  <div class="navbar-content">
    <!-- logo -->
    <div class="navbar-logo">
      <a href="${blog_url!}">${blog_title!}</a>
    </div>
    <!-- link -->
    <div class="navbar-link">
      <div class="navbar-btn">
        <div></div>
        <div></div>
        <div></div>
      </div>
      <ul class="navbar-list">
       <#list menus?sort_by('priority') as menu>
            <li class="navbar-list-item">
                <a href="${menu.url}" target="${menu.target!}">${menu.name} </a>
            </li>
        </#list>
      </ul>
    </div>
  </div>
</nav>
</@menuTag>
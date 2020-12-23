<#macro header title subtitle home_cover >
    <header class="header-container">
        <div class="header-content">
            <div class="post-image"
                 style="background-image:url(${home_cover})">
            </div>
            <div class="post-text">
                <h1 class="title-wrap">${title!}</h1>
                <h2 class="title-sub-wrap">${subtitle!}</h2>
            </div>
        </div>
    </header>
</#macro>
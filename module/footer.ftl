<footer id="footer" class="footer">
    <div class="footer-container">
    <#if settings.footer??>
            <a href="https://beian.miit.gov.cn/" target="_blank">
                ${settings.footer}
            </a>
        </#if>
    <p>
            <a href="javascript:;" id="theme-light">🌞 浅色</a>
            <a href="javascript:;" id="theme-dark">🌛 深色</a>
            <a href="javascript:;" id="theme-auto">🤖️ 自动</a>
        </p>
        <p><@global.footer /></p>
        <p>Powered by <a href="https://halo.run/" target="_blank" rel="noopener noreferrer">Halo</a> Theme - <a
                    href="${theme.repo!}" target="_blank" rel="noopener noreferrer author">${theme.name!}</a>
        </p>
        
    </div>
</footer>
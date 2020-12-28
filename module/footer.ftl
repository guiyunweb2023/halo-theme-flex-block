<footer id="footer" class="footer">
    <div class="footer-container">
        <p><@global.footer /></p>
        <#if settings.footer??>
            <a href="https://beian.miit.gov.cn/" target="_blank">
                ${settings.footer}
            </a>
        </#if>
        <p>Powered by <a href="https://halo.run/" target="_blank" rel="noopener noreferrer">Halo</a> Theme - <a
                    href="${theme.repo!}" target="_blank" rel="noopener noreferrer author">${theme.name!}</a>
        </p>
    </div>
</footer>